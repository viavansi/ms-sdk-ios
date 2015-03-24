#import "ApiClient.h"
#import "SWGFile.h"
#import "OAuth1Client.h"

@interface ApiClient ()

@end

static ApiClient * singleton;
static NSMutableDictionary *_pool = nil;

static long requestId = 0;
static bool offlineState = false;
static NSMutableSet * queuedRequests = nil;
static bool cacheEnabled = false;
static AFNetworkReachabilityStatus reachabilityStatus = AFNetworkReachabilityStatusNotReachable;
static NSOperationQueue* sharedQueue;
static void (^reachabilityChangeBlock)(int);
static bool loggingEnabled = true;

@implementation ApiClient

+(ApiClient * ) sharedInstance{
	
	if(singleton==nil){
		singleton = [[ApiClient alloc] init];
	}
	
	if (queuedRequests == nil) {
		queuedRequests = [[NSMutableSet alloc]init];
	}
	
	if(_pool == nil) {
		// setup static vars
		// create queue
		sharedQueue = [[NSOperationQueue alloc] init];
		
		// create pool
		_pool = [[NSMutableDictionary alloc] init];
		
		// initialize URL cache
		[ApiClient configureCacheWithMemoryAndDiskCapacity:4*1024*1024 diskSize:32*1024*1024];
	}
	
	return singleton;
}

+(void)setLoggingEnabled:(bool) state {
	loggingEnabled = state;
}

+(void)clearCache {
	[[NSURLCache sharedURLCache] removeAllCachedResponses];
}

+(void)setCacheEnabled:(BOOL)enabled {
	cacheEnabled = enabled;
}

+(void)configureCacheWithMemoryAndDiskCapacity: (unsigned long) memorySize
									  diskSize: (unsigned long) diskSize {
	NSAssert(memorySize > 0, @"invalid in-memory cache size");
	NSAssert(diskSize >= 0, @"invalid disk cache size");
	
	NSURLCache *cache =
	[[NSURLCache alloc]
	 initWithMemoryCapacity:memorySize
	 diskCapacity:diskSize
	 diskPath:@"swagger_url_cache"];
	
	[NSURLCache setSharedURLCache:cache];
}

+(NSOperationQueue*) sharedQueue {
	return sharedQueue;
}

+(unsigned long)requestQueueSize {
	return [queuedRequests count];
}

+(NSNumber*) nextRequestId {
	long nextId = ++requestId;
	if(loggingEnabled)
		NSLog(@"got id %ld", nextId);
	return [NSNumber numberWithLong:nextId];
}

+(NSNumber*) queueRequest {
	NSNumber* requestId = [ApiClient nextRequestId];
	if(loggingEnabled)
		NSLog(@"added %@ to request queue", requestId);
	[queuedRequests addObject:requestId];
	return requestId;
}

+(void) cancelRequest:(NSNumber*)requestId {
	[queuedRequests removeObject:requestId];
}

+(NSString*) escape:(id)unescaped {
	if([unescaped isKindOfClass:[NSString class]]){
		return (NSString *)CFBridgingRelease
		(CFURLCreateStringByAddingPercentEscapes(
												 NULL,
												 (__bridge CFStringRef) unescaped,
												 NULL,
												 (CFStringRef)@"!*'();:@&=+$,/?%#[]",
												 kCFStringEncodingUTF8));
	}
	else {
		return [NSString stringWithFormat:@"%@", unescaped];
	}
}

-(Boolean) executeRequestWithId:(NSNumber*) requestId {
	NSSet* matchingItems = [queuedRequests objectsPassingTest:^BOOL(id obj, BOOL *stop) {
		if([obj intValue]  == [requestId intValue])
			return TRUE;
		else return FALSE;
	}];
	
	if(matchingItems.count == 1) {
		if(loggingEnabled)
			NSLog(@"removing request id %@", requestId);
		[queuedRequests removeObject:requestId];
		return true;
	}
	else
		return false;
}

+(AFNetworkReachabilityStatus) getReachabilityStatus {
	return reachabilityStatus;
}

+(void) setReachabilityChangeBlock:(void(^)(int))changeBlock {
	reachabilityChangeBlock = changeBlock;
}

+(void) setOfflineState:(BOOL) state {
	offlineState = state;
}

+(void) configureCacheReachibility {
	[[ApiClient sharedInstance].reachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
		reachabilityStatus = status;
		switch (status) {
			case AFNetworkReachabilityStatusUnknown:
				if(loggingEnabled)
					NSLog(@"reachability changed to AFNetworkReachabilityStatusUnknown");
				[ApiClient setOfflineState:true];
				break;
				
			case AFNetworkReachabilityStatusNotReachable:
				if(loggingEnabled)
					NSLog(@"reachability changed to AFNetworkReachabilityStatusNotReachable");
				[ApiClient setOfflineState:true];
				break;
				
			case AFNetworkReachabilityStatusReachableViaWWAN:
				if(loggingEnabled)
					NSLog(@"reachability changed to AFNetworkReachabilityStatusReachableViaWWAN");
				[ApiClient setOfflineState:false];
				break;
				
			case AFNetworkReachabilityStatusReachableViaWiFi:
				if(loggingEnabled)
					NSLog(@"reachability changed to AFNetworkReachabilityStatusReachableViaWiFi");
				[ApiClient setOfflineState:false];
				break;
			default:
				break;
		}
		// call the reachability block, if configured
		if(reachabilityChangeBlock != nil) {
			reachabilityChangeBlock(status);
		}
	}];
	[[ApiClient sharedInstance].reachabilityManager startMonitoring];
}

-(NSString*) pathWithQueryParamsToString:(NSString*) path
							 queryParams:(NSDictionary*) queryParams {
	NSString * separator = nil;
	int counter = 0;
	
	NSMutableString * requestUrl = [NSMutableString stringWithFormat:@"%@", path];
	if(queryParams != nil){
		for(NSString * key in [queryParams keyEnumerator]){
			if(counter == 0) separator = @"?";
			else separator = @"&";
			NSString * value;
			if([[queryParams valueForKey:key] isKindOfClass:[NSString class]]){
				value = [ApiClient escape:[queryParams valueForKey:key]];
			}
			else {
				value = [NSString stringWithFormat:@"%@", [queryParams valueForKey:key]];
			}
			[requestUrl appendString:[NSString stringWithFormat:@"%@%@=%@", separator,
									  [ApiClient escape:key], value]];
			counter += 1;
		}
	}
	return requestUrl;
}

- (NSString*)descriptionForRequest:(NSURLRequest*)request {
	return [[request URL] absoluteString];
}

- (void)logRequest:(NSURLRequest*)request {
	NSLog(@"request: %@", [self descriptionForRequest:request]);
}

- (void)logResponse:(id)data forRequest:(NSURLRequest*)request error:(NSError*)error {
	NSLog(@"request: %@  response: %@ ",  [self descriptionForRequest:request], data );
}

-(NSNumber*)  dictionary: (NSString*) path
				  method: (NSString*) method
			 queryParams: (NSDictionary*) queryParams
					body: (id) body
			headerParams: (NSDictionary*) headerParams
	  requestContentType: (NSString*) requestContentType
	 responseContentType: (NSString*) responseContentType
		 successBlock: (void (^)(NSDictionary*))successBlock
		errorBlock: (void (^)(NSError *))errorBlock{
	
	NSMutableURLRequest * request = nil;
	if (body != nil && [body isKindOfClass:[NSArray class]]){
		SWGFile * file;
		NSMutableDictionary * params = [[NSMutableDictionary alloc] init];
		for(id obj in body) {
			if([obj isKindOfClass:[SWGFile class]]) {
				file = (SWGFile*) obj;
				requestContentType = @"multipart/form-data";
			}
			else if([obj isKindOfClass:[NSDictionary class]]) {
				for(NSString * key in obj) {
					params[key] = obj[key];
				}
			}
		}
		
		NSURL *absoluteURL = [NSURL URLWithString:self.url];
		NSString * urlString = [[NSURL URLWithString:path relativeToURL:absoluteURL] absoluteString];
		
		if(file != nil) {
			request = [self.requestSerializer multipartFormRequestWithMethod: @"POST"
																   URLString: urlString
																  parameters: nil
												   constructingBodyWithBlock: ^(id<AFMultipartFormData> formData) {
													   
													   for(NSString * key in params) {
														   NSData* data = [params[key] dataUsingEncoding:NSUTF8StringEncoding];
														   [formData appendPartWithFormData: data name: key];
													   }
													   
													   [formData appendPartWithFileData: [file data]
																				   name: [file paramName]
																			   fileName: [file name]
																			   mimeType: [file mimeType]];
													   
												   }
																	   error:nil];
		}else{
			if ([[params allKeys] count] == 0) {
				params = nil;
			}
			request = [self.requestSerializer requestWithMethod:method
													  URLString:urlString
													 parameters:params
														  error:nil];
		}
	}
	else {
		NSString * pathWithQueryParams = [self pathWithQueryParamsToString:path queryParams:queryParams];
		NSURL *absoluteURL = [NSURL URLWithString:self.url];
		NSString * urlString = [[NSURL URLWithString:pathWithQueryParams relativeToURL:absoluteURL] absoluteString];
		
		request = [self.requestSerializer requestWithMethod:method
												  URLString:urlString
												 parameters:body
													  error:nil];
	}
	BOOL hasHeaderParams = false;
	if(headerParams != nil && [headerParams count] > 0)
		hasHeaderParams = true;
	if(offlineState) {
		NSLog(@"%@ cache forced", path);
		[request setCachePolicy:NSURLRequestReturnCacheDataDontLoad];
	}
	else if(!hasHeaderParams && [method isEqualToString:@"GET"] && cacheEnabled) {
		NSLog(@"%@ cache enabled", path);
		[request setCachePolicy:NSURLRequestUseProtocolCachePolicy];
	}
	else {
		NSLog(@"%@ cache disabled", path);
		[request setCachePolicy:NSURLRequestReloadIgnoringLocalCacheData];
	}
	
	AFJSONRequestSerializer *requestSerializer = [AFJSONRequestSerializer serializer];
	
	if(body != nil) {
		if([body isKindOfClass:[NSDictionary class]] || [body isKindOfClass:[NSArray class]]){
			[requestSerializer setValue:requestContentType forHTTPHeaderField:@"Content-Type"];
		}
		else if ([body isKindOfClass:[SWGFile class]]) {}
		else {
			NSAssert(false, @"unsupported post type!");
		}
	}
	if(headerParams != nil){
		for(NSString * key in [headerParams keyEnumerator]){
			[request setValue:[headerParams valueForKey:key] forHTTPHeaderField:key];
		}
	}
	[requestSerializer setValue:responseContentType forHTTPHeaderField:@"Accept"];
	
	// Always disable cookies!
	[request setHTTPShouldHandleCookies:NO];
	
	
	if (self.logRequests) {
		[self logRequest:request];
	}
	
	OAuth1Client *auth = [[OAuth1Client alloc] init];
	[auth setConsumerKey:[[ApiClient sharedInstance] consumerKey]];
	[auth setConsumerSecret:[[ApiClient sharedInstance] consumerSecret]];
	[auth setToken:[[ApiClient sharedInstance] token]];
	[auth setTokenSecret:[[ApiClient sharedInstance] tokenSecret]];
	[auth authorizeRequest:request];
	
	NSNumber* requestId = [ApiClient queueRequest];
	AFHTTPRequestOperation *op =
	[self HTTPRequestOperationWithRequest:request
								  success:^(AFHTTPRequestOperation *operation, id JSON) {
									  if([self executeRequestWithId:requestId]) {
										  if(self.logServerResponses)
											  [self logResponse:JSON forRequest:request error:nil];
										  successBlock(JSON);
									  }
								  } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
									  if([self executeRequestWithId:requestId]) {
										  NSMutableDictionary *userInfo = [error.userInfo mutableCopy];
										  if(operation.responseObject) {
											  // Add in the (parsed) response body.
											  userInfo[SWGResponseObjectErrorKey] = operation.responseObject;
										  }
										  NSError *augmentedError = [error initWithDomain:error.domain code:error.code userInfo:userInfo];
										  
										  if(self.logServerResponses)
											  [self logResponse:nil forRequest:request error:augmentedError];
										  errorBlock(augmentedError);
									  }
								  }
	 ];
	[self.operationQueue addOperation:op];
	return requestId;
}

-(NSNumber*)  stringWithCompletionBlock: (NSString*) path
								 method: (NSString*) method
							queryParams: (NSDictionary*) queryParams
								   body: (id) body
						   headerParams: (NSDictionary*) headerParams
					 requestContentType: (NSString*) requestContentType
					responseContentType: (NSString*) responseContentType
						successBlock: (void (^)(NSString*))successBlock
						errorBlock: (void (^)(NSError *))errorBlock{
	NSMutableURLRequest * request = nil;
	if (body != nil && [body isKindOfClass:[NSArray class]]){
		SWGFile * file;
		NSMutableDictionary * params = [[NSMutableDictionary alloc] init];
		for(id obj in body) {
			if([obj isKindOfClass:[SWGFile class]]) {
				file = (SWGFile*) obj;
				requestContentType = @"multipart/form-data";
			}
			else if([obj isKindOfClass:[NSDictionary class]]) {
				for(NSString * key in obj) {
					params[key] = obj[key];
				}
			}
		}
		NSURL *absoluteURL = [NSURL URLWithString:self.url];
		NSString * urlString = [[NSURL URLWithString:path relativeToURL:absoluteURL] absoluteString];
		
		if(file != nil) {
			request = [self.requestSerializer multipartFormRequestWithMethod: @"POST"
																   URLString: urlString
																  parameters: nil
												   constructingBodyWithBlock: ^(id<AFMultipartFormData> formData) {
													   
													   for(NSString * key in params) {
														   NSData* data = [params[key] dataUsingEncoding:NSUTF8StringEncoding];
														   [formData appendPartWithFormData: data name: key];
													   }
													   
													   [formData appendPartWithFileData: [file data]
																				   name: [file paramName]
																			   fileName: [file name]
																			   mimeType: [file mimeType]];
													   
												   }error:nil];
		}
	} else {
		NSString * pathWithQueryParams = [self pathWithQueryParamsToString:path queryParams:queryParams];
		NSURL *absoluteURL = [NSURL URLWithString:self.url];
		NSString * urlString = [[NSURL URLWithString:pathWithQueryParams relativeToURL:absoluteURL] absoluteString];
		
		request = [self.requestSerializer requestWithMethod: method
												  URLString: urlString
												 parameters: body
													  error: nil];
	}
	BOOL hasHeaderParams = false;
	if(headerParams != nil && [headerParams count] > 0)
		hasHeaderParams = true;
	if(offlineState) {
		NSLog(@"%@ cache forced", path);
		[request setCachePolicy:NSURLRequestReturnCacheDataDontLoad];
	}
	else if(!hasHeaderParams && [method isEqualToString:@"GET"] && cacheEnabled) {
		NSLog(@"%@ cache enabled", path);
		[request setCachePolicy:NSURLRequestUseProtocolCachePolicy];
	}
	else {
		NSLog(@"%@ cache disabled", path);
		[request setCachePolicy:NSURLRequestReloadIgnoringLocalCacheData];
	}
	
	
	AFJSONRequestSerializer *requestSerializer = [AFJSONRequestSerializer serializer];
	
	if(body != nil) {
		if([body isKindOfClass:[NSDictionary class]] || [body isKindOfClass:[NSArray class]]){
			[requestSerializer setValue:requestContentType forHTTPHeaderField:@"Content-Type"];
		}
		else if ([body isKindOfClass:[SWGFile class]]){}
		else {
			NSAssert(false, @"unsupported post type!");
		}
	}
	if(headerParams != nil){
		for(NSString * key in [headerParams keyEnumerator]){
			[request setValue:[headerParams valueForKey:key] forHTTPHeaderField:key];
		}
	}
	[requestSerializer setValue:responseContentType forHTTPHeaderField:@"Accept"];
	
	
	// Always disable cookies!
	[request setHTTPShouldHandleCookies:NO];
	
	OAuth1Client *auth = [[OAuth1Client alloc] init];
	[auth setConsumerKey:[[ApiClient sharedInstance] consumerKey]];
	[auth setConsumerSecret:[[ApiClient sharedInstance] consumerSecret]];
	[auth setToken:[[ApiClient sharedInstance] token]];
	[auth setTokenSecret:[[ApiClient sharedInstance] tokenSecret]];
	[auth authorizeRequest:request];
	
	NSNumber* requestId = [ApiClient queueRequest];
	AFHTTPRequestOperation *op = [self HTTPRequestOperationWithRequest:request
															   success:^(AFHTTPRequestOperation *operation, id responseObject) {
																   NSString *response = [operation responseString];
																   if([self executeRequestWithId:requestId]) {
																	   if(self.logServerResponses)
																		   [self logResponse:responseObject forRequest:request error:nil];
																	   successBlock(response);
																   }
															   } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
																   if([self executeRequestWithId:requestId]) {
																	   NSMutableDictionary *userInfo = [error.userInfo mutableCopy];
																	   if(operation.responseObject) {
																		   // Add in the (parsed) response body.
																		   userInfo[SWGResponseObjectErrorKey] = operation.responseObject;
																	   }
																	   NSError *augmentedError = [error initWithDomain:error.domain code:error.code userInfo:userInfo];
																	   
																	   if(self.logServerResponses)
																		   [self logResponse:nil forRequest:request error:augmentedError];
																	   errorBlock(augmentedError);
																   }
															   }];
	
	[self.operationQueue addOperation:op];
	return requestId;
}

@end
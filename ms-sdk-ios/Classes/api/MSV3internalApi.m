#import "MSV3internalApi.h"
#import "SWGFile.h"
#import "ApiClient.h"



@implementation MSV3internalApi

+(unsigned long) requestQueueSize {
    return [ApiClient requestQueueSize];
}


+(NSNumber*) health: (NSString*) metrics_pass
        
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/_internal_/health/{metrics_pass}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"metrics_pass", @"}"]] withString: [ApiClient escape:metrics_pass]];
    

	NSArray * requestContentTypes = @[@"text/plain"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"text/plain"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    [bodyDictionary addObject:formParams];
    

    

    ApiClient* client = [ApiClient sharedInstance];

    
    
            // primitive response type
    
    
    // no return base type
    return [client stringWithCompletionBlock: auth
    							  requestUrl: requestUrl
                                      method: @"GET"
                                 queryParams: queryParams
                                        body: bodyDictionary
                                headerParams: headerParams
                          requestContentType: requestContentType
                         responseContentType: responseContentType
                             successBlock: ^(NSString *data) {
                                onSuccessBlock();
                             }
                             errorBlock: ^(NSError *error) {
                onErrorBlock(error);
                    }];
    

    
    
}

+(NSNumber*) prometheus: (NSString*) metrics_pass
        
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/_internal_/prometheus/{metrics_pass}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"metrics_pass", @"}"]] withString: [ApiClient escape:metrics_pass]];
    

	NSArray * requestContentTypes = @[@"text/plain"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"text/plain"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    [bodyDictionary addObject:formParams];
    

    

    ApiClient* client = [ApiClient sharedInstance];

    
    
            // primitive response type
    
    
    // no return base type
    return [client stringWithCompletionBlock: auth
    							  requestUrl: requestUrl
                                      method: @"GET"
                                 queryParams: queryParams
                                        body: bodyDictionary
                                headerParams: headerParams
                          requestContentType: requestContentType
                         responseContentType: responseContentType
                             successBlock: ^(NSString *data) {
                                onSuccessBlock();
                             }
                             errorBlock: ^(NSError *error) {
                onErrorBlock(error);
                    }];
    

    
    
}



@end

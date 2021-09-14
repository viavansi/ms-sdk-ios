#import "MSV3uploadsApi.h"
#import "SWGFile.h"
#import "ApiClient.h"
#import "MSUpload.h"



@implementation MSV3uploadsApi

+(unsigned long) requestQueueSize {
    return [ApiClient requestQueueSize];
}


+(NSNumber*) getDownloadLink: (NSString*) token
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUpload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/uploads/download/link/{token}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"token", @"}"]] withString: [ApiClient escape:token]];
    

	NSArray * requestContentTypes = @[@"application/json"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    [bodyDictionary addObject:formParams];
    

    

    ApiClient* client = [ApiClient sharedInstance];

    
    
    
        
    // comples response type
    return [client dictionary: auth
					         requestUrl: requestUrl 
                       method: @"GET"
                  queryParams: queryParams
                         body: bodyDictionary
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              successBlock: ^(NSDictionary *data) {
                
                MSUpload *result = nil;
                if (data) {
                    result = [[MSUpload    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}

+(NSNumber*) getUploadLink: (NSString*) extension
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUpload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/uploads/link/{extension}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"extension", @"}"]] withString: [ApiClient escape:extension]];
    

	NSArray * requestContentTypes = @[@"application/json"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    [bodyDictionary addObject:formParams];
    

    

    ApiClient* client = [ApiClient sharedInstance];

    
    
    
        
    // comples response type
    return [client dictionary: auth
					         requestUrl: requestUrl 
                       method: @"GET"
                  queryParams: queryParams
                         body: bodyDictionary
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              successBlock: ^(NSDictionary *data) {
                
                MSUpload *result = nil;
                if (data) {
                    result = [[MSUpload    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}



@end

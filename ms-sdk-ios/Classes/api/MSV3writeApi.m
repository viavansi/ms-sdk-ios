#import "MSV3writeApi.h"
#import "SWGFile.h"
#import "ApiClient.h"



@implementation MSV3writeApi

+(unsigned long) requestQueueSize {
    return [ApiClient requestQueueSize];
}


+(NSNumber*) getWriteToken: (NSString*) groupCode
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/write/token/{groupCode}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"groupCode", @"}"]] withString: [ApiClient escape:groupCode]];
    

	NSArray * requestContentTypes = @[];
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

    
    
            // primitive response type
    return [client stringWithCompletionBlock: auth
					                                requestUrl: requestUrl 
                                              method: @"GET"
                                         queryParams: queryParams
                                                body: bodyDictionary
                                        headerParams: headerParams
                                  requestContentType: requestContentType
                                 responseContentType: responseContentType
                                     successBlock: ^(NSString *data) {
                                        NSString *result = data ? [[NSString  alloc]initWithString: data] : nil;
                                        onSuccessBlock(result);
                                     }
                                     errorBlock: ^(NSError *error) {
                         onErrorBlock(error);
                     }];
    
    

        

    
}



@end

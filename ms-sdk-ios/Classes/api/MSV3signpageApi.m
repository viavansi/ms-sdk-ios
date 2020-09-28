#import "MSV3signpageApi.h"
#import "SWGFile.h"
#import "ApiClient.h"
#import "MSSignPageLocalizables.h"



@implementation MSV3signpageApi

+(unsigned long) requestQueueSize {
    return [ApiClient requestQueueSize];
}


+(NSNumber*) getLocalizables: (NSString*) groupCode
         languageId: (NSString*) languageId
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSSignPageLocalizables* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/signpage/localizables/{groupCode}/language/{languageId}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"groupCode", @"}"]] withString: [ApiClient escape:groupCode]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"languageId", @"}"]] withString: [ApiClient escape:languageId]];
    

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
                
                MSSignPageLocalizables *result = nil;
                if (data) {
                    result = [[MSSignPageLocalizables    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}



@end

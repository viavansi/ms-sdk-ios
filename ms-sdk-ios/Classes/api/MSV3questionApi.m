#import "MSV3questionApi.h"
#import "SWGFile.h"
#import "ApiClient.h"
#import "MSParam.h"
#import "MSQuestionary.h"
#import "MSQuestionaryValidation.h"



@implementation MSV3questionApi

+(unsigned long) requestQueueSize {
    return [ApiClient requestQueueSize];
}


+(NSNumber*) requestQuestionary: (NSString*) messageCode
         evidenceCode: (NSString*) evidenceCode
         body: (NSArray*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSQuestionary* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/question/evidence/{messageCode}/{evidenceCode}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"messageCode", @"}"]] withString: [ApiClient escape:messageCode]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"evidenceCode", @"}"]] withString: [ApiClient escape:evidenceCode]];
    

	NSArray * requestContentTypes = @[@"application/json"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    id __body = body;

    if(__body != nil && [__body isKindOfClass:[NSArray class]]){
        NSMutableArray * objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)__body) {
            if([dict respondsToSelector:@selector(asDictionary)]) {
                [objs addObject:[(SWGObject*)dict asDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyDictionary = objs;
    }
    else if([__body respondsToSelector:@selector(asDictionary)]) {
        bodyDictionary = [(SWGObject*)__body asDictionary];
    }
    else if([__body isKindOfClass:[NSString class]]) {
        // convert it to a dictionary
        NSError * error;
        NSString * str = (NSString*)__body;
        NSDictionary *JSON =
            [NSJSONSerialization JSONObjectWithData: [str dataUsingEncoding: NSUTF8StringEncoding]
                                            options: NSJSONReadingMutableContainers
                                              error: &error];
        bodyDictionary = JSON;
    }
    
    

    

    ApiClient* client = [ApiClient sharedInstance];

    
    
    
        
    // comples response type
    return [client dictionary: auth
					         requestUrl: requestUrl 
                       method: @"PUT"
                  queryParams: queryParams
                         body: bodyDictionary
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              successBlock: ^(NSDictionary *data) {
                
                MSQuestionary *result = nil;
                if (data) {
                    result = [[MSQuestionary    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}

+(NSNumber*) validateQuestionary: (NSString*) messageCode
         evidenceCode: (NSString*) evidenceCode
         body: (MSQuestionary*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSQuestionaryValidation* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/question/evidence/{messageCode}/{evidenceCode}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"messageCode", @"}"]] withString: [ApiClient escape:messageCode]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"evidenceCode", @"}"]] withString: [ApiClient escape:evidenceCode]];
    

	NSArray * requestContentTypes = @[@"application/json"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    id __body = body;

    if(__body != nil && [__body isKindOfClass:[NSArray class]]){
        NSMutableArray * objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)__body) {
            if([dict respondsToSelector:@selector(asDictionary)]) {
                [objs addObject:[(SWGObject*)dict asDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyDictionary = objs;
    }
    else if([__body respondsToSelector:@selector(asDictionary)]) {
        bodyDictionary = [(SWGObject*)__body asDictionary];
    }
    else if([__body isKindOfClass:[NSString class]]) {
        // convert it to a dictionary
        NSError * error;
        NSString * str = (NSString*)__body;
        NSDictionary *JSON =
            [NSJSONSerialization JSONObjectWithData: [str dataUsingEncoding: NSUTF8StringEncoding]
                                            options: NSJSONReadingMutableContainers
                                              error: &error];
        bodyDictionary = JSON;
    }
    
    

    

    ApiClient* client = [ApiClient sharedInstance];

    
    
    
        
    // comples response type
    return [client dictionary: auth
					         requestUrl: requestUrl 
                       method: @"POST"
                  queryParams: queryParams
                         body: bodyDictionary
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              successBlock: ^(NSDictionary *data) {
                
                MSQuestionaryValidation *result = nil;
                if (data) {
                    result = [[MSQuestionaryValidation    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}



@end

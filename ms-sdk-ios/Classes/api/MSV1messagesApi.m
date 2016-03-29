#import "MSV1messagesApi.h"
#import "SWGFile.h"
#import "ApiClient.h"
#import "MSMessage.h"
#import "MSDocument.h"



@implementation MSV1messagesApi

+(unsigned long) requestQueueSize {
    return [ApiClient requestQueueSize];
}


+(NSNumber*) sendMessage: (MSMessage*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/messages", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

	NSArray * requestContentTypes = @[@"application/json"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json",@"text/plain"];
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

    
    
            // primitive response type
    return [client stringWithCompletionBlock: auth
					                                requestUrl: requestUrl 
                                              method: @"POST"
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

+(NSNumber*) rejectMessageByCode: (NSString*) messageCode
         comment: (NSString*) comment
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/messages/reject/{messageCode}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"messageCode", @"}"]] withString: [ApiClient escape:messageCode]];
    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    if(comment){
    formParams[@"comment"] = comment;
    }
    
    [bodyDictionary addObject:formParams];
    

    

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
                
                MSMessage *result = nil;
                if (data) {
                    result = [[MSMessage    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}

+(NSNumber*) updateDocument: (NSString*) messageCode
         body: (MSDocument*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/messages/updateDocument/{messageCode}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"messageCode", @"}"]] withString: [ApiClient escape:messageCode]];
    

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
                
                MSMessage *result = nil;
                if (data) {
                    result = [[MSMessage    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}

+(NSNumber*) getMessageByCode: (NSString*) messageCode
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/messages/{messageCode}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"messageCode", @"}"]] withString: [ApiClient escape:messageCode]];
    

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
                
                MSMessage *result = nil;
                if (data) {
                    result = [[MSMessage    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}



@end

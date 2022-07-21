#import "MSV3messagesApi.h"
#import "SWGFile.h"
#import "ApiClient.h"
#import "MSMessage.h"
#import "MSBatchLinkRequest.h"
#import "MSBatchLink.h"
#import "MSMessageBuild.h"
#import "MSMessageData.h"
#import "MSDownload.h"
#import "MSExtendPeriod.h"
#import "MSMessageList.h"
#import "MSMessagePaginatedList.h"
#import "MSOtpInfo.h"
#import "MSCallbackUrl.h"
#import "MSCallbackMail.h"
#import "MSNotificationResend.h"
#import "MSNotification.h"
#import "MSMessageRestart.h"
#import "MSMessageStatus.h"
#import "MSDocument.h"



@implementation MSV3messagesApi

+(unsigned long) requestQueueSize {
    return [ApiClient requestQueueSize];
}


+(NSNumber*) sendMessage: (MSMessage*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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

+(NSNumber*) getBatchLink: (MSBatchLinkRequest*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSBatchLink* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/batchLink", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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
                
                MSBatchLink *result = nil;
                if (data) {
                    result = [[MSBatchLink    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}

+(NSNumber*) messagesBuild: (MSMessage*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageBuild* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/build", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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
                
                MSMessageBuild *result = nil;
                if (data) {
                    result = [[MSMessageBuild    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}

+(NSNumber*) sendMessageData: (MSMessageData*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/data", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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

+(NSNumber*) disableByCode: (NSString*) messageCode
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/disabled/{messageCode}", [[ApiClient sharedInstance] url]];

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

+(NSNumber*) dispatchMessage: (MSMessage*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/dispatch", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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

+(NSNumber*) documentBuild: (MSMessage*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/document/build", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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
                
                MSDownload *result = nil;
                if (data) {
                    result = [[MSDownload    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}

+(NSNumber*) extendSignaturePeriod: (MSExtendPeriod*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/extendSignaturePeriod", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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

    
    
            // primitive response type
    return [client stringWithCompletionBlock: auth
					                                requestUrl: requestUrl 
                                              method: @"PUT"
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

+(NSNumber*) getMessagesByExternalStatusNew: (NSString*) groupCode
         requestAppCode: (NSString*) requestAppCode
         templateCode: (NSString*) templateCode
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/external/new", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

	NSArray * requestContentTypes = @[@"application/json"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(groupCode != nil)
        queryParams[@"groupCode"] = groupCode;
    if(requestAppCode != nil)
        queryParams[@"requestAppCode"] = requestAppCode;
    if(templateCode != nil)
        queryParams[@"templateCode"] = templateCode;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    

    

    ApiClient* client = [ApiClient sharedInstance];

        // array container response type
    return [client dictionary: auth
                   requestUrl: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              successBlock: ^(NSDictionary *data){
                if([data isKindOfClass:[NSArray class]]){
                    NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                    for (NSDictionary* dict in (NSArray*)data) {
                        
                        
                        MSMessageList* d = [[MSMessageList alloc]initWithValues: dict];
                        
                        [objs addObject:d];
                    }
                    onSuccessBlock(objs);
                }
              }
              errorBlock: ^(NSError *error) {
                onErrorBlock(error);
                
            }];
    
    
}

+(NSNumber*) getMessagesByExternalStatus: (NSString*) externalStatus
         groupCode: (NSString*) groupCode
         requestAppCode: (NSString*) requestAppCode
         templateCode: (NSString*) templateCode
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/external/status/{externalStatus}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"externalStatus", @"}"]] withString: [ApiClient escape:externalStatus]];
    

	NSArray * requestContentTypes = @[@"application/json"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(groupCode != nil)
        queryParams[@"groupCode"] = groupCode;
    if(requestAppCode != nil)
        queryParams[@"requestAppCode"] = requestAppCode;
    if(templateCode != nil)
        queryParams[@"templateCode"] = templateCode;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    

    

    ApiClient* client = [ApiClient sharedInstance];

        // array container response type
    return [client dictionary: auth
                   requestUrl: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              successBlock: ^(NSDictionary *data){
                if([data isKindOfClass:[NSArray class]]){
                    NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                    for (NSDictionary* dict in (NSArray*)data) {
                        
                        
                        MSMessageList* d = [[MSMessageList alloc]initWithValues: dict];
                        
                        [objs addObject:d];
                    }
                    onSuccessBlock(objs);
                }
              }
              errorBlock: ^(NSError *error) {
                onErrorBlock(error);
                
            }];
    
    
}

+(NSNumber*) getMessagesByExternalService: (NSString*) externalCode
         externalStatus: (NSString*) externalStatus
         groupCode: (NSString*) groupCode
         requestAppCode: (NSString*) requestAppCode
         templateCode: (NSString*) templateCode
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/external/{externalCode}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"externalCode", @"}"]] withString: [ApiClient escape:externalCode]];
    

	NSArray * requestContentTypes = @[@"application/json"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(externalStatus != nil)
        queryParams[@"externalStatus"] = externalStatus;
    if(groupCode != nil)
        queryParams[@"groupCode"] = groupCode;
    if(requestAppCode != nil)
        queryParams[@"requestAppCode"] = requestAppCode;
    if(templateCode != nil)
        queryParams[@"templateCode"] = templateCode;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    

    

    ApiClient* client = [ApiClient sharedInstance];

        // array container response type
    return [client dictionary: auth
                   requestUrl: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              successBlock: ^(NSDictionary *data){
                if([data isKindOfClass:[NSArray class]]){
                    NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                    for (NSDictionary* dict in (NSArray*)data) {
                        
                        
                        MSMessageList* d = [[MSMessageList alloc]initWithValues: dict];
                        
                        [objs addObject:d];
                    }
                    onSuccessBlock(objs);
                }
              }
              errorBlock: ^(NSError *error) {
                onErrorBlock(error);
                
            }];
    
    
}

+(NSNumber*) changeExternalCode: (NSString*) messageCode
         code: (NSString*) code
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/external/{messageCode}/code/{code}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"messageCode", @"}"]] withString: [ApiClient escape:messageCode]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"code", @"}"]] withString: [ApiClient escape:code]];
    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
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

+(NSNumber*) changeExternalStatus: (NSString*) messageCode
         status: (NSString*) status
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/external/{messageCode}/status/{status}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"messageCode", @"}"]] withString: [ApiClient escape:messageCode]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"status", @"}"]] withString: [ApiClient escape:status]];
    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
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

+(NSNumber*) finalizeMessage: (NSString*) messageCode
         recipientKey: (NSString*) recipientKey
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/finalize", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    if(messageCode){
    formParams[@"messageCode"] = messageCode;
    }
    
    if(recipientKey){
    formParams[@"recipientKey"] = recipientKey;
    }
    
    [bodyDictionary addObject:formParams];
    

    

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

+(NSNumber*) messagesGroup: (MSMessage*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/group", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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

+(NSNumber*) isFinalizable: (NSString*) messageCode
         recipientKey: (NSString*) recipientKey
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSNumber* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/isFinalizable/{messageCode}", [[ApiClient sharedInstance] url]];

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
    if(recipientKey != nil)
        queryParams[@"recipientKey"] = recipientKey;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    

    

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
										NSNumber *result = data ? [[NSNumber  alloc]initWithInt: [data integerValue]] : nil;
                                        onSuccessBlock(result);
                                     }
                                     errorBlock: ^(NSError *error) {
                         onErrorBlock(error);
                     }];
    
    

        

    
}

+(NSNumber*) getMessagesByUser: (NSString*) index
         page_size: (NSString*) page_size
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/list/my/user/{index}/{page_size}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"index", @"}"]] withString: [ApiClient escape:index]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"page_size", @"}"]] withString: [ApiClient escape:page_size]];
    

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

        // array container response type
    return [client dictionary: auth
                   requestUrl: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              successBlock: ^(NSDictionary *data){
                if([data isKindOfClass:[NSArray class]]){
                    NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                    for (NSDictionary* dict in (NSArray*)data) {
                        
                        
                        MSMessagePaginatedList* d = [[MSMessagePaginatedList alloc]initWithValues: dict];
                        
                        [objs addObject:d];
                    }
                    onSuccessBlock(objs);
                }
              }
              errorBlock: ^(NSError *error) {
                onErrorBlock(error);
                
            }];
    
    
}

+(NSNumber*) callbackForm: (NSString*) message
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/mock/callbackForm", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    if(message){
    formParams[@"message"] = message;
    }
    
    [bodyDictionary addObject:formParams];
    

    

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

+(NSNumber*) callbackJSON: (MSMessage*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/mock/callbackJSON", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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

+(NSNumber*) prepareOtpMail: (NSString*) messageCode
         setCode: (NSString*) setCode
         recipientKey: (NSString*) recipientKey
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSOtpInfo* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/otp/mail/prepare/{messageCode}", [[ApiClient sharedInstance] url]];

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
    if(setCode != nil)
        queryParams[@"setCode"] = setCode;
    if(recipientKey != nil)
        queryParams[@"recipientKey"] = recipientKey;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    

    

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
                
                MSOtpInfo *result = nil;
                if (data) {
                    result = [[MSOtpInfo    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}

+(NSNumber*) validateOtpMail: (NSString*) messageCode
         token: (NSString*) token
         setCode: (NSString*) setCode
         recipientKey: (NSString*) recipientKey
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/otp/mail/validate", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    if(messageCode){
    formParams[@"messageCode"] = messageCode;
    }
    
    if(token){
    formParams[@"token"] = token;
    }
    
    if(setCode){
    formParams[@"setCode"] = setCode;
    }
    
    if(recipientKey){
    formParams[@"recipientKey"] = recipientKey;
    }
    
    [bodyDictionary addObject:formParams];
    

    

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

+(NSNumber*) prepareOtpSms: (NSString*) messageCode
         setCode: (NSString*) setCode
         recipientKey: (NSString*) recipientKey
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSOtpInfo* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/otp/sms/prepare/{messageCode}", [[ApiClient sharedInstance] url]];

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
    if(setCode != nil)
        queryParams[@"setCode"] = setCode;
    if(recipientKey != nil)
        queryParams[@"recipientKey"] = recipientKey;
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    

    

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
                
                MSOtpInfo *result = nil;
                if (data) {
                    result = [[MSOtpInfo    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}

+(NSNumber*) validateOtpSms: (NSString*) messageCode
         token: (NSString*) token
         setCode: (NSString*) setCode
         recipientKey: (NSString*) recipientKey
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/otp/sms/validate", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    if(messageCode){
    formParams[@"messageCode"] = messageCode;
    }
    
    if(token){
    formParams[@"token"] = token;
    }
    
    if(setCode){
    formParams[@"setCode"] = setCode;
    }
    
    if(recipientKey){
    formParams[@"recipientKey"] = recipientKey;
    }
    
    [bodyDictionary addObject:formParams];
    

    

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

+(NSNumber*) prepareMessage: (MSMessage*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/prepare", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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

+(NSNumber*) rejectMessageByCode: (NSString*) messageCode
         comment: (NSString*) comment
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/reject/{messageCode}", [[ApiClient sharedInstance] url]];

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

+(NSNumber*) sendCallbackUrl: (MSCallbackUrl*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/resend/callback", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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

+(NSNumber*) sendCallback: (MSCallbackMail*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/resend/callbackMail", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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

+(NSNumber*) resendNotification: (MSNotificationResend*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSNotification* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/resend/notification", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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
                
                MSNotification *result = nil;
                if (data) {
                    result = [[MSNotification    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}

+(NSNumber*) retryMessage: (NSString*) code
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/resend/{code}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"code", @"}"]] withString: [ApiClient escape:code]];
    

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

+(NSNumber*) resendWebNotification: (NSString*) messageCode
         recipients: (NSString*) recipients
         smsText: (NSString*) smsText
         mailText: (NSString*) mailText
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/resendWeb", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    if(messageCode){
    formParams[@"messageCode"] = messageCode;
    }
    
    if(recipients){
    formParams[@"recipients"] = recipients;
    }
    
    if(smsText){
    formParams[@"smsText"] = smsText;
    }
    
    if(mailText){
    formParams[@"mailText"] = mailText;
    }
    
    [bodyDictionary addObject:formParams];
    

    

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

+(NSNumber*) resendMessage: (MSMessageRestart*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/restart", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

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

    
    
            // primitive response type
    return [client stringWithCompletionBlock: auth
					                                requestUrl: requestUrl 
                                              method: @"PUT"
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

+(NSNumber*) resendMessageOld: (NSString*) code
        
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/restart/{code}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"code", @"}"]] withString: [ApiClient escape:code]];
    

	NSArray * requestContentTypes = @[@"text/plain"];
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
    
    
    // no return base type
    return [client stringWithCompletionBlock: auth
    							  requestUrl: requestUrl
                                      method: @"PUT"
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

+(NSNumber*) getMessageStatusByCode: (NSString*) messageCode
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageStatus* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/status/{messageCode}", [[ApiClient sharedInstance] url]];

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
                
                MSMessageStatus *result = nil;
                if (data) {
                    result = [[MSMessageStatus    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    

    
}

+(NSNumber*) transfer: (NSString*) messageCode
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/transfer", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    if(messageCode){
    formParams[@"messageCode"] = messageCode;
    }
    
    [bodyDictionary addObject:formParams];
    

    

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

+(NSNumber*) resendTransfer: (NSString*) messageCode
         transferSystem: (NSString*) transferSystem
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/transfer/resend", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    if(messageCode){
    formParams[@"messageCode"] = messageCode;
    }
    
    if(transferSystem){
    formParams[@"transferSystem"] = transferSystem;
    }
    
    [bodyDictionary addObject:formParams];
    

    

    ApiClient* client = [ApiClient sharedInstance];

    
    
            // primitive response type
    return [client stringWithCompletionBlock: auth
					                                requestUrl: requestUrl 
                                              method: @"PUT"
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

+(NSNumber*) updateDocument: (NSString*) messageCode
         body: (MSDocument*) body
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/updateDocument/{messageCode}", [[ApiClient sharedInstance] url]];

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

+(NSNumber*) validateCode: (NSString*) messageCode
         code: (NSString*) code
        
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/validate/code", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    if(messageCode){
    formParams[@"messageCode"] = messageCode;
    }
    
    if(code){
    formParams[@"code"] = code;
    }
    
    [bodyDictionary addObject:formParams];
    

    

    ApiClient* client = [ApiClient sharedInstance];

    
    
            // primitive response type
    
    
    // no return base type
    return [client stringWithCompletionBlock: auth
    							  requestUrl: requestUrl
                                      method: @"POST"
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

+(NSNumber*) validateCodeFinish: (NSString*) messageCode
         code: (NSString*) code
        
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/validate/code/finish", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    

	NSArray * requestContentTypes = @[@"application/x-www-form-urlencoded"];
    NSString* requestContentType = requestContentTypes.count > 0 ? requestContentTypes[0] : @"application/json";

    NSArray * responseContentTypes = @[@"application/json"];
    NSString* responseContentType = responseContentTypes.count > 0 ? responseContentTypes[0] : @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    if(messageCode){
    formParams[@"messageCode"] = messageCode;
    }
    
    if(code){
    formParams[@"code"] = code;
    }
    
    [bodyDictionary addObject:formParams];
    

    

    ApiClient* client = [ApiClient sharedInstance];

    
    
            // primitive response type
    
    
    // no return base type
    return [client stringWithCompletionBlock: auth
    							  requestUrl: requestUrl
                                      method: @"POST"
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

+(NSNumber*) getMessageByCode: (NSString*) messageCode
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/{messageCode}", [[ApiClient sharedInstance] url]];

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

+(NSNumber*) getMessagesByStatusAndGroup: (NSString*) status
         groupCode: (NSString*) groupCode
         index: (NSString*) index
         page_size: (NSString*) page_size
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/{status}/group/{groupCode}/{index}/{page_size}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"status", @"}"]] withString: [ApiClient escape:status]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"groupCode", @"}"]] withString: [ApiClient escape:groupCode]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"index", @"}"]] withString: [ApiClient escape:index]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"page_size", @"}"]] withString: [ApiClient escape:page_size]];
    

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

        // array container response type
    return [client dictionary: auth
                   requestUrl: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              successBlock: ^(NSDictionary *data){
                if([data isKindOfClass:[NSArray class]]){
                    NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                    for (NSDictionary* dict in (NSArray*)data) {
                        
                        
                        MSMessagePaginatedList* d = [[MSMessagePaginatedList alloc]initWithValues: dict];
                        
                        [objs addObject:d];
                    }
                    onSuccessBlock(objs);
                }
              }
              errorBlock: ^(NSError *error) {
                onErrorBlock(error);
                
            }];
    
    
}

+(NSNumber*) getMessagesByStatusAndUser: (NSString*) status
         userCode: (NSString*) userCode
         index: (NSString*) index
         page_size: (NSString*) page_size
        
        auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v3/messages/{status}/user/{userCode}/{index}/{page_size}", [[ApiClient sharedInstance] url]];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound){
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];
    }

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"status", @"}"]] withString: [ApiClient escape:status]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"userCode", @"}"]] withString: [ApiClient escape:userCode]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"index", @"}"]] withString: [ApiClient escape:index]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"page_size", @"}"]] withString: [ApiClient escape:page_size]];
    

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

        // array container response type
    return [client dictionary: auth
                   requestUrl: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              successBlock: ^(NSDictionary *data){
                if([data isKindOfClass:[NSArray class]]){
                    NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                    for (NSDictionary* dict in (NSArray*)data) {
                        
                        
                        MSMessagePaginatedList* d = [[MSMessagePaginatedList alloc]initWithValues: dict];
                        
                        [objs addObject:d];
                    }
                    onSuccessBlock(objs);
                }
              }
              errorBlock: ^(NSError *error) {
                onErrorBlock(error);
                
            }];
    
    
}



@end

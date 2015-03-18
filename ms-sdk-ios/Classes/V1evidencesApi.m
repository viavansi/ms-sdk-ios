#import "V1evidencesApi.h"
#import "SWGFile.h"
#import "ApiClient.h"
#import "Evidence.h"



@implementation V1evidencesApi
static NSString * basePath = @"http://null/";

+(V1evidencesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static V1evidencesApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[V1evidencesApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(void) setBasePath:(NSString*)path {
    basePath = path;
}

+(NSString*) getBasePath {
    return basePath;
}

-(ApiClient*) apiClient {
    return [ApiClient sharedClientFromPool:basePath];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(id) init {
    self = [super init];
    [self apiClient];
    return self;
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [ApiClient requestQueueSize];
}


-(NSNumber*) updateWithCompletionBlock: (NSString*) messageCode
         policyCode: (NSString*) policyCode
         evidenceCode: (NSString*) evidenceCode
         imageBase64: (NSString*) imageBase64
         metadata: (NSString*) metadata
         fingerID: (NSString*) fingerID
         algorithmic: (NSString*) algorithmic
        
        completionHandler: (void (^)(Evidence* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/evidences/", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    
    bodyDictionary = [[NSMutableArray alloc] init];

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init]; 

    
    formParams[@"messageCode"] = messageCode;
    
    formParams[@"policyCode"] = policyCode;
    
    formParams[@"evidenceCode"] = evidenceCode;
    
    formParams[@"imageBase64"] = imageBase64;
    
    formParams[@"metadata"] = metadata;
    
    formParams[@"fingerID"] = fingerID;
    
    formParams[@"algorithmic"] = algorithmic;
    
    [bodyDictionary addObject:formParams];
    

    

    ApiClient* client = [ApiClient sharedClientFromPool:basePath];

    
    
    
        
    // comples response type
    return [client dictionary: requestUrl 
                       method: @"PUT" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              completionBlock: ^(NSDictionary *data, NSError *error) {
                if (error) {
                    completionBlock(nil, error);
                    
                    return;
                }
                
                Evidence *result = nil;
                if (data) {
                    result = [[Evidence    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) sendEvidenceWithCompletionBlock: (NSString*) messageCode
         policyCode: (NSString*) policyCode
         evidenceCode: (NSString*) evidenceCode
         archive: () archive
         metadata: (NSString*) metadata
         fingerID: (NSString*) fingerID
         algorithmic: (NSString*) algorithmic
        
        completionHandler: (void (^)(Evidence* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/evidences/upload", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    

    id bodyDictionary = nil;
    
    id __body = archive;

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
    
    

    

    ApiClient* client = [ApiClient sharedClientFromPool:basePath];

    
    
    
        
    // comples response type
    return [client dictionary: requestUrl 
                       method: @"POST" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              completionBlock: ^(NSDictionary *data, NSError *error) {
                if (error) {
                    completionBlock(nil, error);
                    
                    return;
                }
                
                Evidence *result = nil;
                if (data) {
                    result = [[Evidence    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}



@end
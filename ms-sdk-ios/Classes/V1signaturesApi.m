#import "V1signaturesApi.h"
#import "SWGFile.h"
#import "ApiClient.h"
#import "Policy.h"



@implementation V1signaturesApi
static NSString * basePath = @"http://null/";

+(V1signaturesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static V1signaturesApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[V1signaturesApi alloc] init];
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


-(NSNumber*) prepareSignatureWithCompletionBlock: (NSString*) messageCode
         policyCode: (NSString*) policyCode
         userCode: (NSString*) userCode
        
        completionHandler: (void (^)(Policy* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/signatures/prepare", basePath];

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
    
    formParams[@"userCode"] = userCode;
    
    [bodyDictionary addObject:formParams];
    

    

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
                
                Policy *result = nil;
                if (data) {
                    result = [[Policy    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}

-(NSNumber*) registerSignatureWithCompletionBlock: (NSString*) messageCode
         policyCode: (NSString*) policyCode
         signatureCode: (NSString*) signatureCode
        
        completionHandler: (void (^)(Policy* output, NSError* error))completionBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/signatures/register", basePath];

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
    
    formParams[@"signatureCode"] = signatureCode;
    
    [bodyDictionary addObject:formParams];
    

    

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
                
                Policy *result = nil;
                if (data) {
                    result = [[Policy    alloc]initWithValues: data];
                }
                completionBlock(result , nil);
                
              }];
    
    
}



@end
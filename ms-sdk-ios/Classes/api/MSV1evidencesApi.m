#import "MSV1evidencesApi.h"
#import "SWGFile.h"
#import "ApiClient.h"
#import "MSEvidence.h"



@implementation MSV1evidencesApi

+(unsigned long) requestQueueSize {
    return [ApiClient requestQueueSize];
}


+(NSNumber*) update: (NSString*) messageCode
         policyCode: (NSString*) policyCode
         evidenceCode: (NSString*) evidenceCode
         imageBase64: (NSString*) imageBase64
         metadata: (NSString*) metadata
         fingerID: (NSString*) fingerID
         algorithmic: (NSString*) algorithmic
        
        onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock
         {

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/evidences/", [[ApiClient sharedInstance] url]];

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
    
    if(policyCode){
    formParams[@"policyCode"] = policyCode;
    }
    
    if(evidenceCode){
    formParams[@"evidenceCode"] = evidenceCode;
    }
    
    if(imageBase64){
    formParams[@"imageBase64"] = imageBase64;
    }
    
    if(metadata){
    formParams[@"metadata"] = metadata;
    }
    
    if(fingerID){
    formParams[@"fingerID"] = fingerID;
    }
    
    if(algorithmic){
    formParams[@"algorithmic"] = algorithmic;
    }
    
    [bodyDictionary addObject:formParams];
    

    

    ApiClient* client = [ApiClient sharedInstance];

    
    
    
        
    // comples response type
    return [client dictionary: requestUrl 
                       method: @"PUT" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
           requestContentType: requestContentType
          responseContentType: responseContentType
              successBlock: ^(NSDictionary *data) {
                
                MSEvidence *result = nil;
                if (data) {
                    result = [[MSEvidence    alloc]initWithValues: data];
                }
                onSuccessBlock(result);
                
              }
              errorBlock: ^(NSError *error) {
                    onErrorBlock(error);
                    
              }];
    
    
}



@end
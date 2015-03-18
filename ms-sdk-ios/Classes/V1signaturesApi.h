#import <Foundation/Foundation.h>
#import "Policy.h"
#import "SWGObject.h"


@interface V1signaturesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(V1signaturesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Method for prepare signatures
 
 
 

 
 @param messageCode Message&#39;s identifier
 
 @param policyCode Policy&#39;s identifier
 
 @param userCode User&#39;s identifier
 

 return type: Policy*
 */
-(NSNumber*) prepareSignatureWithCompletionBlock :(NSString*) messageCode 
     policyCode:(NSString*) policyCode 
     userCode:(NSString*) userCode 
    
    completionHandler: (void (^)(Policy* output, NSError* error))completionBlock;
    


/**

 Method for register signatures
 
 
 

 
 @param messageCode Message&#39;s identifier
 
 @param policyCode Policy&#39;s identifier
 
 @param signatureCode Signature&#39;s identifier
 

 return type: Policy*
 */
-(NSNumber*) registerSignatureWithCompletionBlock :(NSString*) messageCode 
     policyCode:(NSString*) policyCode 
     signatureCode:(NSString*) signatureCode 
    
    completionHandler: (void (^)(Policy* output, NSError* error))completionBlock;
    



@end
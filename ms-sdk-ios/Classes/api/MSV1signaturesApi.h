#import <Foundation/Foundation.h>
#import "MSPolicy.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV1signaturesApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for prepare signatures
 
 
 

 
 @param messageCode Message&#39;s identifier
 
 @param policyCode Policy&#39;s identifier
 
 @param userCode User&#39;s identifier
 

 return type: MSPolicy*
 */
+(NSNumber*) prepareSignature :(NSString*) messageCode 
     policyCode:(NSString*) policyCode 
     userCode:(NSString*) userCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSPolicy* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for register signatures
 
 
 

 
 @param messageCode Message&#39;s identifier
 
 @param policyCode Policy&#39;s identifier
 
 @param signatureCode Signature&#39;s identifier
 

 return type: MSPolicy*
 */
+(NSNumber*) registerSignature :(NSString*) messageCode 
     policyCode:(NSString*) policyCode 
     signatureCode:(NSString*) signatureCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSPolicy* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

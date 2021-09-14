#import <Foundation/Foundation.h>
#import "MSSignature.h"
#import "MSWrapSignature.h"
#import "MSWrapSignatureBatch.h"
#import "MSSignatureBatch.h"
#import "MSPrepareSignature.h"
#import "MSDataToSign.h"
#import "MSDataToSignBatch.h"
#import "MSPrepareSignatureBatch.h"
#import "MSEvidenceSignature.h"
#import "MSPolicy.h"
#import "MSFortressSignature.h"
#import "MSTimestampResponse.h"
#import "MSMessage.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3signaturesApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for get signed message
 
 
 

 
 @param body Data for wrap sign
 

 return type: MSSignature*
 */
+(NSNumber*) finalizeClientSignature :(MSWrapSignature*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSSignature* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get signed message
 
 
 

 
 @param body Data for wrap sign
 

 return type: MSSignatureBatch*
 */
+(NSNumber*) finalizeClientSignatureBatch :(MSWrapSignatureBatch*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSSignatureBatch* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for prepare a client signature
 
 
 

 
 @param body Data for prepare sign
 

 return type: MSDataToSign*
 */
+(NSNumber*) prepareClientSignature :(MSPrepareSignature*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDataToSign* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for prepare a client signature batch
 
 
 

 
 @param body List of Data for prepare sign
 

 return type: MSDataToSignBatch*
 */
+(NSNumber*) prepareClientSignatureBatch :(MSPrepareSignatureBatch*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDataToSignBatch* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for process a server signature
 
 
 

 
 @param body Data for update selected evidence
 

 return type: MSPolicy*
 */
+(NSNumber*) addDigitalizedSignature :(MSEvidenceSignature*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSPolicy* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get fortress client signature url
 
 
 

 
 @param messageCode Message&#39;s identifier
 
 @param signatureCode Signature&#39;s identifier
 

 return type: MSFortressSignature*
 */
+(NSNumber*) getFortressSignatureUrl :(NSString*) messageCode 
     signatureCode:(NSString*) signatureCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSFortressSignature* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for process a server signature
 
 
 

 
 @param messageCode messageCode
 
 @param signatureCode signatureCode
 

 return type: MSSignature*
 */
+(NSNumber*) addServerSignature :(NSString*) messageCode 
     signatureCode:(NSString*) signatureCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSSignature* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an signature status
 
 Get signature status
 

 
 @param messageCode Message&#39;s identifier
 
 @param signatureCode Signature&#39;s identifier
 

 return type: MSSignature*
 */
+(NSNumber*) getSignatureByCode :(NSString*) messageCode 
     signatureCode:(NSString*) signatureCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSSignature* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an timestamp
 
 Get timestamp
 

 
 @param messageCode Message&#39;s identifier
 
 @param evidenceCode Evidence&#39;s identifier
 

 return type: MSTimestampResponse*
 */
+(NSNumber*) getTimeStampByCode :(NSString*) messageCode 
     evidenceCode:(NSString*) evidenceCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSTimestampResponse* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method to update the status of a signature
 
 
 

 
 @param messageCode messageCode
 
 @param signatureCode signatureCode
 
 @param status status
 

 return type: MSMessage*
 */
+(NSNumber*) updateSignatureStatus :(NSString*) messageCode 
     signatureCode:(NSString*) signatureCode 
     status:(NSString*) status 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

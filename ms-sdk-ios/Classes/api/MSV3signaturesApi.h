#import <Foundation/Foundation.h>
#import "MSSignature.h"
#import "MSWrapSignature.h"
#import "MSPrepareSignature.h"
#import "MSDataToSign.h"
#import "MSEvidenceSignature.h"
#import "MSPolicy.h"
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

 Method for prepare a client signature
 
 
 

 
 @param body Data for prepare sign
 

 return type: MSDataToSign*
 */
+(NSNumber*) prepareClientSignature :(MSPrepareSignature*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDataToSign* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for process a server signature
 
 
 

 
 @param body Data for update selected evidence
 

 return type: MSPolicy*
 */
+(NSNumber*) addDigitalizedSignature :(MSEvidenceSignature*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSPolicy* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


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

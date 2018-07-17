#import <Foundation/Foundation.h>
#import "MSEvidence.h"
#import "MSEvidenceFingerPrint.h"
#import "MSEvidenceGeneric.h"
#import "MSEvidenceImage.h"
#import "MSEvidenceSignature.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3evidencesApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for add images as evidence
 
 Add new evidence (image)
 

 
 @param body Data for update selected evidence
 

 return type: MSEvidence*
 */
+(NSNumber*) addFingerPrintAsEvidence :(MSEvidenceFingerPrint*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for add images as evidence
 
 Add new evidence (image)
 

 
 @param body Data for update selected evidence
 

 return type: MSEvidence*
 */
+(NSNumber*) addGenericAsEvidence :(MSEvidenceGeneric*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for add images as evidence
 
 Add new evidence (image)
 

 
 @param body Data for update selected evidence
 

 return type: MSEvidence*
 */
+(NSNumber*) addImageAsEvidence :(MSEvidenceImage*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get OTP Mail info
 
 Get OTP Mail evidence info
 

 
 @param messageCode Message&#39;s unique code
 
 @param evidenceCode Evidence&#39;s unique code
 

 return type: MSEvidence*
 */
+(NSNumber*) prepareOtpMailEvidence :(NSString*) messageCode 
     evidenceCode:(NSString*) evidenceCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for validate OTP Mail info
 
 Get OTP Mail evidence info
 

 
 @param messageCode messageCode
 
 @param evidenceCode evidenceCode
 
 @param token token
 

 return type: MSEvidence*
 */
+(NSNumber*) validateOtpMailEvidence :(NSString*) messageCode 
     evidenceCode:(NSString*) evidenceCode 
     token:(NSString*) token 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get OTP SMS info
 
 Get OTP SMS evidence info
 

 
 @param messageCode Message&#39;s unique code
 
 @param evidenceCode Evidence&#39;s unique code
 

 return type: MSEvidence*
 */
+(NSNumber*) prepareOtpSmsEvidence :(NSString*) messageCode 
     evidenceCode:(NSString*) evidenceCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for validate OTP SMS info
 
 Get OTP SMS evidence info
 

 
 @param messageCode messageCode
 
 @param evidenceCode evidenceCode
 
 @param token token
 

 return type: MSEvidence*
 */
+(NSNumber*) validateOtpSmsEvidence :(NSString*) messageCode 
     evidenceCode:(NSString*) evidenceCode 
     token:(NSString*) token 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for add images as evidence
 
 Add new evidence (image)
 

 
 @param body Data for update selected evidence
 

 return type: MSEvidence*
 */
+(NSNumber*) addSignatureAsEvidence :(MSEvidenceSignature*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for change user password
 
 Notify user by mail and SMS to change password
 

 
 @param userCode User&#39;s unique code
 

 return type: MSEvidence*
 */
+(NSNumber*) sendSmsChangePassword :(NSString*) userCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

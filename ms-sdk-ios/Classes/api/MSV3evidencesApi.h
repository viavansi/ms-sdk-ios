#import <Foundation/Foundation.h>
#import "MSEvidence.h"
#import "MSEvidenceFingerPrint.h"
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
+(NSNumber*) addImageAsEvidence :(MSEvidenceImage*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get OTP SMS info
 
 Get OTP SMS evidence info
 

 
 @param messageCode Message&#39;s unique code
 
 @param policyCode Policy&#39;s unique code
 
 @param evidenceCode Evidence&#39;s unique code
 

 return type: MSEvidence*
 */
+(NSNumber*) prepareOtpSmsEvidence :(NSString*) messageCode 
     policyCode:(NSString*) policyCode 
     evidenceCode:(NSString*) evidenceCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for validate OTP SMS info
 
 Get OTP SMS evidence info
 

 
 @param messageCode messageCode
 
 @param policyCode policyCode
 
 @param evidenceCode evidenceCode
 
 @param operatioId operatioId
 
 @param token token
 

 return type: MSEvidence*
 */
+(NSNumber*) validateOtpSmsEvidence :(NSString*) messageCode 
     policyCode:(NSString*) policyCode 
     evidenceCode:(NSString*) evidenceCode 
     operatioId:(NSString*) operatioId 
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
    



@end

#import <Foundation/Foundation.h>
#import "MSAttachment.h"
#import "SWGFile.h"
#import "MSAttachmentFile.h"
#import "MSEvidence.h"
#import "MSEvidenceFingerPrint.h"
#import "MSEvidenceGeneric.h"
#import "MSEvidenceImage.h"
#import "MSOtpList.h"
#import "MSOtpBatchPrepare.h"
#import "MSEvidenceSignature.h"
#import "MSMessage.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3evidencesApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for add attachments 
 
 Add new attachment as input stream
 

 
 @param messageCode 
 
 @param attachmentCode 
 
 @param attachmentFile 
 
 @param attachmentFilename 
 

 return type: MSAttachment*
 */
+(NSNumber*) attach :(NSString*) messageCode 
     attachmentCode:(NSString*) attachmentCode 
     attachmentFile:(SWGFile*) attachmentFile 
     attachmentFilename:(NSString*) attachmentFilename 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSAttachment* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get attachment file data
 
 Return json with file name and attach
 

 
 @param messageCode Message&#39;s unique code
 
 @param attachmentCode Attachment&#39;s unique code
 

 return type: MSAttachmentFile*
 */
+(NSNumber*) getAttachmentData :(NSString*) messageCode 
     attachmentCode:(NSString*) attachmentCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSAttachmentFile* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get attachment file
 
 Return attachment file
 

 
 @param messageCode Message&#39;s unique code
 
 @param attachmentCode Attachment&#39;s unique code
 

 return type: NSArray*
 */
+(NSNumber*) getAttachmentFile :(NSString*) messageCode 
     attachmentCode:(NSString*) attachmentCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get evidence image
 
 Return byte[] with the image
 

 
 @param messageCode Message&#39;s unique code
 
 @param evidenceCode Evidence&#39;s unique code
 

 return type: NSString*
 */
+(NSNumber*) getEvidenceData :(NSString*) messageCode 
     evidenceCode:(NSString*) evidenceCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


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
 

 return type: NSNumber*
 */
+(NSNumber*) addGenericListAsEvidence :(NSArray*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSNumber* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for add images as evidence
 
 Add new evidence (image)
 

 
 @param body Data for update selected evidence
 

 return type: MSEvidence*
 */
+(NSNumber*) addImageAsEvidence :(MSEvidenceImage*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get OTP group code evidences in set
 
 Get OTP group evidences list info
 

 
 @param setCode Set&#39;s unique code
 

 return type: MSOtpList*
 */
+(NSNumber*) getOTPGroupEvidences :(NSString*) setCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSOtpList* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get OTP Mail operation Id
 
 Get OTP Mail operation Id
 

 
 @param setCode Set&#39;s unique code
 
 @param groupCode OTP Mail Evidence&#39;s group code
 

 return type: MSOtpBatchPrepare*
 */
+(NSNumber*) prepareBatchOtpMailEvidence :(NSString*) setCode 
     groupCode:(NSString*) groupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSOtpBatchPrepare* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


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

 Method for validate OTP SMS info
 
 Get OTP Mail evidence info
 

 
 @param setCode setCode
 
 @param operationCode operationCode
 
 @param groupCode groupCode
 
 @param token token
 

 return type: NSString*
 */
+(NSNumber*) validateBatchOtpMailEvidence :(NSString*) setCode 
     operationCode:(NSString*) operationCode 
     groupCode:(NSString*) groupCode 
     token:(NSString*) token 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get OTP SMS operation Id
 
 Get OTP SMS operation Id
 

 
 @param setCode Set&#39;s unique code
 
 @param groupCode OTP SMS Evidence&#39;s group code
 

 return type: MSOtpBatchPrepare*
 */
+(NSNumber*) prepareBatchOtpSmsEvidence :(NSString*) setCode 
     groupCode:(NSString*) groupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSOtpBatchPrepare* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get OTP SMS operation Id
 
 Get OTP SMS operation status
 

 
 @param operationCode Operation code
 
 @param setCode Set&#39;s unique code
 
 @param groupCode OTP SMS Evidence&#39;s group code
 

 return type: NSNumber*
 */
+(NSNumber*) prepareValidationOtpSmsEvidence :(NSString*) operationCode 
     setCode:(NSString*) setCode 
     groupCode:(NSString*) groupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSNumber* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


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

 Method for validate OTP SMS info
 
 Get OTP SMS evidence info
 

 
 @param setCode setCode
 
 @param operationCode operationCode
 
 @param groupCode groupCode
 
 @param token token
 

 return type: NSString*
 */
+(NSNumber*) validateBatchOtpSmsEvidence :(NSString*) setCode 
     operationCode:(NSString*) operationCode 
     groupCode:(NSString*) groupCode 
     token:(NSString*) token 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for delete evidence
 
 Return evidence code
 

 
 @param messageCode Message&#39;s unique code
 
 @param evidenceCode Evidence&#39;s unique code
 

 return type: NSString*
 */
+(NSNumber*) removeEvidence :(NSString*) messageCode 
     evidenceCode:(NSString*) evidenceCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for delete attachment
 
 Return attachment code
 

 
 @param messageCode Message&#39;s unique code
 
 @param attachmentCode Evidence&#39;s unique code
 

 return type: NSString*
 */
+(NSNumber*) removeAttachment :(NSString*) messageCode 
     attachmentCode:(NSString*) attachmentCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


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
    


/**

 Method for get an evidence status
 
 Get evidence status
 

 
 @param messageCode Message&#39;s identifier
 
 @param evidenceCode Evidence&#39;s identifier
 

 return type: NSString*
 */
+(NSNumber*) getEvidenceStatus :(NSString*) messageCode 
     evidenceCode:(NSString*) evidenceCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method to update the status of a evidence
 
 
 

 
 @param messageCode messageCode
 
 @param evidenceCode evidenceCode
 
 @param status status
 

 return type: MSMessage*
 */
+(NSNumber*) updateEvidenceStatus :(NSString*) messageCode 
     evidenceCode:(NSString*) evidenceCode 
     status:(NSString*) status 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

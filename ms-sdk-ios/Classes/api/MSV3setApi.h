#import <Foundation/Foundation.h>
#import "MSMessageSetResponse.h"
#import "MSMessageSet.h"
#import "MSSetExtendPeriod.h"
#import "MSMessageSetInfo.h"
#import "MSSetListUserGroup.h"
#import "MSSetCallbackUrl.h"
#import "MSNotificationResend.h"
#import "MSMessageSetStatus.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3setApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for send messages set
 
 
 

 
 @param body Messages Set Data
 

 return type: MSMessageSetResponse*
 */
+(NSNumber*) sendMessageSet :(MSMessageSet*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSetResponse* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for delete draft
 
 Stores a SET JSON, stores the documents associated with the request.
 

 
 @param setCode setCode
 

 return type: NSString*
 */
+(NSNumber*) removeDraft :(NSString*) setCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Stores a SET JSON, stores the documents associated with the request.
 
 Stores a SET JSON, stores the documents associated with the request.
 

 
 @param setCode setCode
 

 return type: MSMessageSet*
 */
+(NSNumber*) loadDraft :(NSString*) setCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSet* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Stores a SET JSON, stores the documents associated with the request.
 
 Stores a SET JSON, stores the documents associated with the request.
 

 
 @param body Set object that needs to be delivery
 

 return type: MSMessageSet*
 */
+(NSNumber*) saveDraft :(MSMessageSet*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSet* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for extend expired period for all set messages
 
 Extend expired period
 

 
 @param body Set to extend expired period
 

 return type: NSString*
 */
+(NSNumber*) extendSignaturePeriod_1 :(MSSetExtendPeriod*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for finalize set
 
 
 

 
 @param setCode setCode
 
 @param recipientKey recipientKey
 

 return type: NSString*
 */
+(NSNumber*) finalizeMessage_1 :(NSString*) setCode 
     recipientKey:(NSString*) recipientKey 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing message set summary
 
 Get message set
 

 
 @param setCode Message&#39;s set identifier
 
 @param recipientKey Recipient key identifier
 

 return type: MSMessageSetInfo*
 */
+(NSNumber*) getInfoSetByRecipient :(NSString*) setCode 
     recipientKey:(NSString*) recipientKey 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSetInfo* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Check if a set is finalizable
 
 Check if a set is finalizable
 

 
 @param setCode setCode
 
 @param recipientKey recipientKey
 

 return type: NSNumber*
 */
+(NSNumber*) isFinalizable_1 :(NSString*) setCode 
     recipientKey:(NSString*) recipientKey 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSNumber* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for listing Sets
 
 Get status set
 

 
 @param userCode User identifier
 
 @param groupCode Group identifier
 
 @param numPag Group identifier
 
 @param limit Group identifier
 
 @param orderBy Group identifier
 
 @param status Status request
 
 @param title Title request
 
 @param _description Description request
 
 @param recipient Recipient request
 
 @param creationDate Init Creation date
 

 return type: MSSetListUserGroup*
 */
+(NSNumber*) getSetByUserAndOrGroup :(NSString*) userCode 
     groupCode:(NSString*) groupCode 
     numPag:(NSNumber*) numPag 
     limit:(NSNumber*) limit 
     orderBy:(NSString*) orderBy 
     status:(NSString*) status 
     title:(NSString*) title 
     _description:(NSString*) _description 
     recipient:(NSString*) recipient 
     creationDate:(NSNumber*) creationDate 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSSetListUserGroup* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Mock method for callback set by default
 
 Mock method for callback set by default
 

 
 @param set set object that needs to be delivery
 

 return type: NSString*
 */
+(NSNumber*) callbackForm_1 :(NSString*) set 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Mock method for callback set with JSON callbackType
 
 Mock method for callback set with JSON callbackType
 

 
 @param body set object that needs to be delivery
 

 return type: NSString*
 */
+(NSNumber*) callbackJSON_1 :(MSMessageSetResponse*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for reject an existing message set
 
 Reject set
 

 
 @param setCode setCode
 
 @param comment comment
 

 return type: MSMessageSetResponse*
 */
+(NSNumber*) rejectSetByCode :(NSString*) setCode 
     comment:(NSString*) comment 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSetResponse* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Send callback URL
 
 Send callback URL
 

 
 @param body JSCallbackUrl object that needs to send callback URL
 

 return type: NSNumber*
 */
+(NSNumber*) sendCallbackUrl_1 :(MSSetCallbackUrl*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSNumber* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for resend set notification
 
 Method for resend 
 

 
 @param setCode Set Code
 

 return type: MSMessageSet*
 */
+(NSNumber*) resendNotifications :(NSString*) setCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSet* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for resend set recipient notification
 
 Method for resend recipient notification in set
 

 
 @param body Set recipient Data
 

 return type: MSMessageSet*
 */
+(NSNumber*) resendNotificationByRecipient :(MSNotificationResend*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSet* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get message set status
 
 Get message set status
 

 
 @param setCode Message&#39;s set identifier
 

 return type: MSMessageSetStatus*
 */
+(NSNumber*) getMessageSetStatus :(NSString*) setCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSetStatus* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing message set summary
 
 Get message set
 

 
 @param setCode Message&#39;s set identifier
 

 return type: MSMessageSetResponse*
 */
+(NSNumber*) getMessageSetByCode :(NSString*) setCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSetResponse* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

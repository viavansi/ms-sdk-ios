#import <Foundation/Foundation.h>
#import "MSMessageSetResponse.h"
#import "MSMessageSet.h"
#import "MSSetExtendPeriod.h"
#import "MSMessageSetInfo.h"
#import "MSNotificationResend.h"
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

 Mock method for callback set by default
 
 Mock method for callback set by default
 

 
 @param message set object that needs to be delivery
 

 return type: NSString*
 */
+(NSNumber*) callbackForm_1 :(NSString*) message 
    
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

 Method for get an existing message set summary
 
 Get message set
 

 
 @param setCode Message&#39;s set identifier
 

 return type: MSMessageSetResponse*
 */
+(NSNumber*) getMessageSetByCode :(NSString*) setCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSetResponse* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

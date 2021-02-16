#import <Foundation/Foundation.h>
#import "MSMessage.h"
#import "MSMessageBuild.h"
#import "MSMessageData.h"
#import "MSDownload.h"
#import "MSMessageList.h"
#import "MSCallbackUrl.h"
#import "MSCallbackMail.h"
#import "MSNotificationResend.h"
#import "MSNotification.h"
#import "MSMessageRestart.h"
#import "MSMessageStatus.h"
#import "MSDocument.h"
#import "MSMessagePaginatedList.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3messagesApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for delivery new message
 
 Delivery new message
 

 
 @param body Message object that needs to be delivery
 

 return type: NSString*
 */
+(NSNumber*) sendMessage :(MSMessage*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for asynchronous execution of a message
 
 asynchronous execution
 

 
 @param body Message with asynchronous execution
 

 return type: MSMessageBuild*
 */
+(NSNumber*) messagesBuild :(MSMessage*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageBuild* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method send user data for a existing message
 
 Send message data
 

 
 @param body MessageData object that contains all user data
 

 return type: MSMessage*
 */
+(NSNumber*) sendMessageData :(MSMessageData*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Disabled message by code
 
 Disabled message by code. Only can be disabled final status messages
 

 
 @param messageCode Message Code
 

 return type: MSMessage*
 */
+(NSNumber*) disableByCode :(NSString*) messageCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for dispatch new message
 
 Dispatch new message
 

 
 @param body Message object that needs to be delivery
 

 return type: MSMessage*
 */
+(NSNumber*) dispatchMessage :(MSMessage*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for synchronous execution of a message
 
 synchronous execution
 

 
 @param body Message with synchronous execution
 

 return type: MSDownload*
 */
+(NSNumber*) documentBuild :(MSMessage*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get messages by external code
 
 Get messages without external status
 

 
 @param groupCode Group code
 
 @param requestAppCode Request app code
 
 @param templateCode Template code
 

 return type: NSArray*
 */
+(NSNumber*) getMessagesByExternalStatusNew :(NSString*) groupCode 
     requestAppCode:(NSString*) requestAppCode 
     templateCode:(NSString*) templateCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get messages by external code
 
 Get messages by external status
 

 
 @param externalStatus Message&#39;s external status
 
 @param groupCode Group code
 
 @param requestAppCode Request app code
 
 @param templateCode Template code
 

 return type: NSArray*
 */
+(NSNumber*) getMessagesByExternalStatus :(NSString*) externalStatus 
     groupCode:(NSString*) groupCode 
     requestAppCode:(NSString*) requestAppCode 
     templateCode:(NSString*) templateCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get messages by external code
 
 Get messages by external code
 

 
 @param externalCode Message&#39;s external code
 
 @param externalStatus External status
 
 @param groupCode Group code
 
 @param requestAppCode Request app code
 
 @param templateCode Template code
 

 return type: NSArray*
 */
+(NSNumber*) getMessagesByExternalService :(NSString*) externalCode 
     externalStatus:(NSString*) externalStatus 
     groupCode:(NSString*) groupCode 
     requestAppCode:(NSString*) requestAppCode 
     templateCode:(NSString*) templateCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for change external status
 
 change external status by message code
 

 
 @param messageCode Message Code
 
 @param status External Status
 

 return type: MSMessage*
 */
+(NSNumber*) changeExternalStatus :(NSString*) messageCode 
     status:(NSString*) status 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for finalize message
 
 
 

 
 @param messageCode messageCode
 
 @param recipientKey recipientKey
 

 return type: MSMessage*
 */
+(NSNumber*) finalizeMessage :(NSString*) messageCode 
     recipientKey:(NSString*) recipientKey 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for dispatch new messages to a group
 
 Method for dispatch new messages to a group
 

 
 @param body Message object to be delivery
 

 return type: NSString*
 */
+(NSNumber*) messagesGroup :(MSMessage*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for prepare new message
 
 Prepare new message
 

 
 @param body Message object that needs to be delivery
 

 return type: MSMessage*
 */
+(NSNumber*) prepareMessage :(MSMessage*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for reject an existing message
 
 Reject message
 

 
 @param messageCode messageCode
 
 @param comment comment
 

 return type: MSMessage*
 */
+(NSNumber*) rejectMessageByCode :(NSString*) messageCode 
     comment:(NSString*) comment 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Send callback URL
 
 Send callback URL
 

 
 @param body JSCallbackUrl object that needs to send callback URL
 

 return type: MSMessage*
 */
+(NSNumber*) sendCallbackUrl :(MSCallbackUrl*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Send callback URL
 
 Send callback URL
 

 
 @param body JSCallbackMail object that needs to send callback email
 

 return type: MSMessage*
 */
+(NSNumber*) sendCallback :(MSCallbackMail*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Send notifications
 
 Send notifications
 

 
 @param body JSNotificationResend object that needs to resend message notification
 

 return type: MSNotification*
 */
+(NSNumber*) resendNotification :(MSNotificationResend*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSNotification* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for retry error message
 
 Retry error message
 

 
 @param code Message code
 

 return type: NSString*
 */
+(NSNumber*) retryMessage :(NSString*) code 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for send mails and/or phones the notification
 
 Method for send mails and/or phones the URL
 

 
 @param messageCode Message Code
 
 @param recipients Recipients 
 
 @param smsText smsText
 
 @param mailText mailText
 

 return type: MSMessage*
 */
+(NSNumber*) resendWebNotification :(NSString*) messageCode 
     recipients:(NSString*) recipients 
     smsText:(NSString*) smsText 
     mailText:(NSString*) mailText 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for resend expired or rejected messages
 
 Resend message
 

 
 @param body Message object that needs to be delivery
 

 return type: NSString*
 */
+(NSNumber*) resendMessage :(MSMessageRestart*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 
 

 
 @param code Message code
 

 return type: 
 */
+(NSNumber*) resendMessageOld :(NSString*) code 
    
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;


/**

 Method for get status of a existing message
 
 Get message status
 

 
 @param messageCode Message&#39;s identifier
 

 return type: MSMessageStatus*
 */
+(NSNumber*) getMessageStatusByCode :(NSString*) messageCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageStatus* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for transfer message to external transfer system
 
 Method for transfer message to external transfer system
 

 
 @param messageCode Message Code
 

 return type: MSMessage*
 */
+(NSNumber*) transfer :(NSString*) messageCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for transfer message to external transfer system
 
 Method for transfer message to external transfer system
 

 
 @param messageCode Message Code
 
 @param transferSystem Transfer system
 

 return type: NSString*
 */
+(NSNumber*) resendTransfer :(NSString*) messageCode 
     transferSystem:(NSString*) transferSystem 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for update a document
 
 Update document
 

 
 @param messageCode messageCode
 
 @param body JSDocument object that needs to be updated
 

 return type: MSMessage*
 */
+(NSNumber*) updateDocument :(NSString*) messageCode 
     body:(MSDocument*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 
 

 
 @param messageCode 
 
 @param code 
 

 return type: 
 */
+(NSNumber*) validateCode :(NSString*) messageCode 
     code:(NSString*) code 
    
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;


/**

 
 

 
 @param messageCode 
 
 @param code 
 

 return type: 
 */
+(NSNumber*) validateCodeFinish :(NSString*) messageCode 
     code:(NSString*) code 
    
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;


/**

 Method for get an existing message
 
 Get message
 

 
 @param messageCode Message&#39;s identifier
 

 return type: MSMessage*
 */
+(NSNumber*) getMessageByCode :(NSString*) messageCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get a list of messages related to an existing group
 
 Get message by status and group
 

 
 @param status Message status
 
 @param groupCode Group code
 
 @param index Index
 
 @param page_size Page size
 

 return type: NSArray*
 */
+(NSNumber*) getMessagesByStatusAndGroup :(NSString*) status 
     groupCode:(NSString*) groupCode 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get a list of messages related to an existing user
 
 Get message by status and user
 

 
 @param status Message status
 
 @param userCode User code
 
 @param index Index
 
 @param page_size Page size
 

 return type: NSArray*
 */
+(NSNumber*) getMessagesByStatusAndUser :(NSString*) status 
     userCode:(NSString*) userCode 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

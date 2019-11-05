#import <Foundation/Foundation.h>
#import "MSNotification.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3notificationsApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for send new notifications
 
 Send new notifications
 

 
 @param body Notification object that needs to be delivery
 

 return type: MSNotification*
 */
+(NSNumber*) sendNotification :(MSNotification*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSNotification* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get a notification by code
 
 Get notification by code
 

 
 @param code Notification code
 

 return type: MSNotification*
 */
+(NSNumber*) findNotificationsByCode :(NSString*) code 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSNotification* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for send new notifications
 
 Send new notifications
 

 
 @param code Notification Code
 
 @param status Notification Status
 

 return type: MSNotification*
 */
+(NSNumber*) changeNotificationStatus :(NSString*) code 
     status:(NSString*) status 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSNotification* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get a notification's list by app, user and device
 
 Get notifications by app, user and device
 

 
 @param app_code App code
 
 @param user_code User code
 
 @param device_code Device code
 
 @param index Index
 
 @param page_size Page size
 

 return type: NSArray*
 */
+(NSNumber*) findCompletedNotificationsByDevice :(NSString*) app_code 
     user_code:(NSString*) user_code 
     device_code:(NSString*) device_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get a completed notification's list by app and user
 
 Get completed notifications by app and user
 

 
 @param app_code App code
 
 @param user_code User code
 
 @param index Index
 
 @param page_size Page size
 

 return type: NSArray*
 */
+(NSNumber*) findCompletedNotificationsByUser :(NSString*) app_code 
     user_code:(NSString*) user_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get a notification's list by app, user and device
 
 Get notifications by app, user and device
 

 
 @param app_code App code
 
 @param user_code User code
 
 @param device_code Device code
 
 @param index Index
 
 @param page_size Page size
 

 return type: NSArray*
 */
+(NSNumber*) findInboxNotificationsByDevice :(NSString*) app_code 
     user_code:(NSString*) user_code 
     device_code:(NSString*) device_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get a inbox notification's list by app and user
 
 Get inbox notifications by app and user
 

 
 @param app_code App code
 
 @param user_code User code
 
 @param index Index
 
 @param page_size Page size
 

 return type: NSArray*
 */
+(NSNumber*) findInboxNotificationsByUser :(NSString*) app_code 
     user_code:(NSString*) user_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get notifications by message code
 
 Get notifications by message code
 

 
 @param code Notification message code
 

 return type: MSNotification*
 */
+(NSNumber*) findNotificationsByMessageCode :(NSString*) code 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSNotification* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get a notification's list by status, app, user and device
 
 Get notifications by status, app, user and device
 

 
 @param status Notification Status
 
 @param app_code App code
 
 @param user_code User code
 
 @param device_code Device code
 
 @param index Index
 
 @param page_size Page size
 

 return type: NSArray*
 */
+(NSNumber*) findNotificationsByUserAndStatusAndDevice :(NSString*) status 
     app_code:(NSString*) app_code 
     user_code:(NSString*) user_code 
     device_code:(NSString*) device_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get a notification's list by status, app and user
 
 Get notifications by status, app and user
 

 
 @param status Notification Status
 
 @param app_code App code
 
 @param user_code User code
 
 @param index Index
 
 @param page_size Page size
 

 return type: NSArray*
 */
+(NSNumber*) findNotificationsByUserStatus :(NSString*) status 
     app_code:(NSString*) app_code 
     user_code:(NSString*) user_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 findNotificationsByToken
 
 findNotificationsByToken
 

 
 @param push_token 
 

 return type: NSString*
 */
+(NSNumber*) findNotificationsByToken :(NSString*) push_token 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 findNotificationsByToken
 
 findNotificationsByToken
 

 
 @param push_token 
 
 @param status Notification Status
 

 return type: NSString*
 */
+(NSNumber*) findNotificationsByTokenStatus :(NSString*) push_token 
     status:(NSString*) status 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

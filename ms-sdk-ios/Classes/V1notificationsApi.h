#import <Foundation/Foundation.h>
#import "Notification.h"
#import "Void.h"
#import "SWGObject.h"


@interface V1notificationsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(V1notificationsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Method for send new notifications
 
 Send new notifications
 

 
 @param body Notification object that needs to be delivery
 

 return type: NSString*
 */
-(NSNumber*) sendNotificationWithCompletionBlock :(Notification*) body 
    
    completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;
    


/**

 Method for send new notifications
 
 Send new notifications
 

 
 @param code Notification Code
 
 @param status Notification Status
 

 return type: Void*
 */
-(NSNumber*) changeNotificationStatusWithCompletionBlock :(NSString*) code 
     status:(NSString*) status 
    
    completionHandler: (void (^)(Void* output, NSError* error))completionBlock;
    


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
-(NSNumber*) findCompletedNotificationsByDeviceWithCompletionBlock :(NSString*) app_code 
     user_code:(NSString*) user_code 
     device_code:(NSString*) device_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;
    


/**

 Method for get a completed notification's list by app and user
 
 Get completed notifications by app and user
 

 
 @param app_code App code
 
 @param user_code User code
 
 @param index Index
 
 @param page_size Page size
 

 return type: NSArray*
 */
-(NSNumber*) findCompletedNotificationsByUserWithCompletionBlock :(NSString*) app_code 
     user_code:(NSString*) user_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;
    


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
-(NSNumber*) findInboxNotificationsByDeviceWithCompletionBlock :(NSString*) app_code 
     user_code:(NSString*) user_code 
     device_code:(NSString*) device_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;
    


/**

 Method for get a inbox notification's list by app and user
 
 Get inbox notifications by app and user
 

 
 @param app_code App code
 
 @param user_code User code
 
 @param index Index
 
 @param page_size Page size
 

 return type: NSArray*
 */
-(NSNumber*) findInboxNotificationsByUserWithCompletionBlock :(NSString*) app_code 
     user_code:(NSString*) user_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;
    


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
-(NSNumber*) findNotificationsByUserAndStatusAndDeviceWithCompletionBlock :(NSString*) status 
     app_code:(NSString*) app_code 
     user_code:(NSString*) user_code 
     device_code:(NSString*) device_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;
    


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
-(NSNumber*) findNotificationsByUserStatusWithCompletionBlock :(NSString*) status 
     app_code:(NSString*) app_code 
     user_code:(NSString*) user_code 
     index:(NSString*) index 
     page_size:(NSString*) page_size 
    
    completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;
    



@end
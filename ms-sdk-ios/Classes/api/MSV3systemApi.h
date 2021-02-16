#import <Foundation/Foundation.h>
#import "MSAlive.h"
#import "MSGroupUserData.h"
#import "MSConfiguration.h"
#import "MSInfoSystemStatus.h"
#import "MSWorkflowManager.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3systemApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Returns true if service is alive
 
 
 

 

 return type: MSAlive*
 */
+(NSNumber*) isAlive :(OAuth1Client *) auth onSuccess:
    (void (^)(MSAlive* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method to create aplication, group and user by name
 
 Method to create aplication, group and user by name
 

 
 @param body GroupUserData object that contains all user data and app/group name
 

 return type: NSString*
 */
+(NSNumber*) createApp :(MSGroupUserData*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Returns app configuration for a target app
 
 
 

 
 @param appIdentifier Application identifier
 

 return type: MSConfiguration*
 */
+(NSNumber*) getDeviceConfiguration :(NSString*) appIdentifier 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSConfiguration* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method to recover global message from admin configuration
 
 Method to recover global message from admin configuration
 

 

 return type: NSString*
 */
+(NSNumber*) getGlobalMessage :(OAuth1Client *) auth onSuccess:
    (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Returns device configuration for a target app
 
 
 

 

 return type: MSInfoSystemStatus*
 */
+(NSNumber*) getSystemInfo :(OAuth1Client *) auth onSuccess:
    (void (^)(MSInfoSystemStatus* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Get workflows configuration
 
 
 

 

 return type: MSWorkflowManager*
 */
+(NSNumber*) getWorkflowConfiguration :(OAuth1Client *) auth onSuccess:
    (void (^)(MSWorkflowManager* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

#import <Foundation/Foundation.h>
#import "MSAlive.h"
#import "MSConfiguration.h"
#import "MSInfoSystemStatus.h"
#import "MSTaskManager.h"
#import "SWGObject.h"


@interface MSV3systemApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Returns true if service is alive
 
 
 

 

 return type: MSAlive*
 */
+(NSNumber*) isAlive :
    (void (^)(MSAlive* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Returns app configuration for a target app
 
 
 

 
 @param appIdentifier Application identifier
 

 return type: MSConfiguration*
 */
+(NSNumber*) getDeviceConfiguration :(NSString*) appIdentifier 
    
    onSuccess: (void (^)(MSConfiguration* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Returns device configuration for a target app
 
 
 

 

 return type: MSInfoSystemStatus*
 */
+(NSNumber*) getSystemInfo :
    (void (^)(MSInfoSystemStatus* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Get workflows configuration
 
 
 

 

 return type: MSTaskManager*
 */
+(NSNumber*) getWorkflowConfiguration :
    (void (^)(MSTaskManager* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
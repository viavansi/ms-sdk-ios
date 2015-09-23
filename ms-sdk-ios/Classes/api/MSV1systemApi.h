#import <Foundation/Foundation.h>
#import "MSAlive.h"
#import "MSInfoSystemStatus.h"
#import "SWGObject.h"


@interface MSV1systemApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Returns true if service is alive
 
 
 

 

 return type: MSAlive*
 */
+(NSNumber*) isAlive :
    (void (^)(MSAlive* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Returns device configuration for a target app
 
 
 

 

 return type: MSInfoSystemStatus*
 */
+(NSNumber*) getSystemInfo :
    (void (^)(MSInfoSystemStatus* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
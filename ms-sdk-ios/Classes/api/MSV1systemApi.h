#import <Foundation/Foundation.h>
#import "MSAlive.h"
#import "MSInfoSystemStatus.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV1systemApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Returns true if service is alive
 
 
 

 

 return type: MSAlive*
 */
+(NSNumber*) isAlive :(OAuth1Client *) auth onSuccess:
    (void (^)(MSAlive* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Returns device configuration for a target app
 
 
 

 

 return type: MSInfoSystemStatus*
 */
+(NSNumber*) getSystemInfo :(OAuth1Client *) auth onSuccess:
    (void (^)(MSInfoSystemStatus* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

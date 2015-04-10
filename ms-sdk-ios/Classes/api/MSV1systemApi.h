#import <Foundation/Foundation.h>
#import "MSInfoSystemStatus.h"
#import "SWGObject.h"


@interface MSV1systemApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Returns device configuration for a target app
 
 
 

 

 return type: MSInfoSystemStatus*
 */
+(NSNumber*) getSystemInfo :
    (void (^)(MSInfoSystemStatus* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
#import <Foundation/Foundation.h>
#import "MSTaskManager.h"
#import "SWGObject.h"


@interface MSV1workflowsApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Get workflows configuration
 
 
 

 

 return type: MSTaskManager*
 */
+(NSNumber*) getWorkflowConfiguration :
    (void (^)(MSTaskManager* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
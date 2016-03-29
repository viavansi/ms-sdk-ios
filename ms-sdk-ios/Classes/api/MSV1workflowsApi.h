#import <Foundation/Foundation.h>
#import "MSTaskManager.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV1workflowsApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Get workflows configuration
 
 
 

 

 return type: MSTaskManager*
 */
+(NSNumber*) getWorkflowConfiguration :(OAuth1Client *) auth onSuccess:
    (void (^)(MSTaskManager* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

#import <Foundation/Foundation.h>
#import "MSLog.h"
#import "SWGObject.h"


@interface MSV3loggerApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for register app logs
 
 
 

 
 @param body Log data
 

 return type: MSLog*
 */
+(NSNumber*) addLog :(MSLog*) body 
    
    onSuccess: (void (^)(MSLog* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
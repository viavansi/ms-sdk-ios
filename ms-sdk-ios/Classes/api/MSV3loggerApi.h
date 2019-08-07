#import <Foundation/Foundation.h>
#import "MSItem.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3loggerApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for register app logs
 
 
 

 
 @param body Log data
 

 return type: MSItem*
 */
+(NSNumber*) addLog :(MSItem*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSItem* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

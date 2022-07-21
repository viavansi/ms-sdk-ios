#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3writeApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for get new write token
 
 Method for get new write token
 

 
 @param groupCode Group code
 

 return type: NSString*
 */
+(NSNumber*) getWriteToken :(NSString*) groupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

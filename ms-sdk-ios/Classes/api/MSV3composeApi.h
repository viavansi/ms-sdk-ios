#import <Foundation/Foundation.h>
#import "MSComposeToken.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3composeApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for get compose token
 
 Method for get compose token
 

 
 @param groupCode Group code
 

 return type: MSComposeToken*
 */
+(NSNumber*) getWriteToken :(NSString*) groupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSComposeToken* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

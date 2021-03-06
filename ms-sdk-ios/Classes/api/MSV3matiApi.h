#import <Foundation/Foundation.h>
#import "MSJSMati.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3matiApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for getmati webhook
 
 mati webhook
 

 
 @param token Security Token
 
 @param body Mati info object
 

 return type: NSString*
 */
+(NSNumber*) webhook :(NSString*) token 
     body:(MSJSMati*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

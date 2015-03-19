#import <Foundation/Foundation.h>
#import "MSToken.h"
#import "SWGObject.h"


@interface MSV1oauthApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for register new access token
 
 
 

 
 @param x_auth_mode x_auth_mode
 
 @param x_auth_username x_auth_username
 
 @param x_auth_password x_auth_password
 

 return type: MSToken*
 */
+(NSNumber*) accessToken :(NSString*) x_auth_mode 
     x_auth_username:(NSString*) x_auth_username 
     x_auth_password:(NSString*) x_auth_password 
    
    onSuccess: (void (^)(MSToken* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for register new access token
 
 
 

 

 return type: MSToken*
 */
+(NSNumber*) requestToken :
    (void (^)(MSToken* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
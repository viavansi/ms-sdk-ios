#import <Foundation/Foundation.h>
#import "MSUser.h"
#import "MSTemplate.h"
#import "SWGObject.h"


@interface MSV1usersApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for register or update users
 
 
 

 
 @param body User to register
 

 return type: MSUser*
 */
+(NSNumber*) registerUser :(MSUser*) body 
    
    onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for user login
 
 Login user
 

 
 @param code 
 
 @param password 
 

 return type: MSUser*
 */
+(NSNumber*) loginUser :(NSString*) code 
     password:(NSString*) password 
    
    onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing user by code
 
 Get user by code
 

 
 @param userCode User code
 

 return type: MSUser*
 */
+(NSNumber*) findUserByCode :(NSString*) userCode 
    
    onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for associate a template to an existing user by code
 
 Put a template to a user by code
 

 
 @param userCode User code
 
 @param templateCode Template code
 

 return type: MSTemplate*
 */
+(NSNumber*) putUserTemplateByCode :(NSString*) userCode 
     templateCode:(NSString*) templateCode 
    
    onSuccess: (void (^)(MSTemplate* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
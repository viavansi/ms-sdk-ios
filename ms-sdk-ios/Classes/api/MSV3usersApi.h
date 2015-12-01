#import <Foundation/Foundation.h>
#import "MSUser.h"
#import "SWGObject.h"


@interface MSV3usersApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for register or update users
 
 
 

 
 @param body User to register
 

 return type: MSUser*
 */
+(NSNumber*) registerUser :(MSUser*) body 
    
    onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method to request account reactivation by code
 
 Request account reactivation by code
 

 
 @param userCode User code
 
 @param email User email
 

 return type: MSUser*
 */
+(NSNumber*) reactivateUserByCode :(NSString*) userCode 
     email:(NSString*) email 
    
    onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing user by code
 
 Get user by code
 

 
 @param userCode User code
 

 return type: MSUser*
 */
+(NSNumber*) findUserByCode :(NSString*) userCode 
    
    onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
#import <Foundation/Foundation.h>
#import "MSUser.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3usersApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for register users
 
 
 

 
 @param body User to register
 

 return type: MSUser*
 */
+(NSNumber*) updateUser :(MSUser*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for register users
 
 
 

 
 @param body User to register
 

 return type: MSUser*
 */
+(NSNumber*) registerUser :(MSUser*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing user by email
 
 Get user by email
 

 
 @param email User email
 

 return type: MSUser*
 */
+(NSNumber*) findUserByEmail :(NSString*) email 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method to request account reactivation by code
 
 Request account reactivation by code
 

 
 @param userCode User code
 
 @param email User email
 

 return type: MSUser*
 */
+(NSNumber*) reactivateUserByCode :(NSString*) userCode 
     email:(NSString*) email 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Send confirm email to an user by code
 
 Send confirm email
 

 
 @param userCode User code
 

 return type: MSUser*
 */
+(NSNumber*) sendConfirmEmail :(NSString*) userCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Send reset password email to an user by code
 
 Send reset password email
 

 
 @param userCode User code
 

 return type: MSUser*
 */
+(NSNumber*) sendResetPasswordEmail :(NSString*) userCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing user by code
 
 Get user by code
 

 
 @param userCode User code
 

 return type: MSUser*
 */
+(NSNumber*) findUserByCode :(NSString*) userCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

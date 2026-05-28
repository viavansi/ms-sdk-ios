#import <Foundation/Foundation.h>
#import "MSUser.h"
#import "MSUserSimple.h"
#import "MSAutoRegister.h"
#import "MSUserInfo.h"
#import "MSResetPassword.h"
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

 Method only for admin apps to get all users
 
 
 

 
 @param index 
 
 @param page_size 
 

 return type: NSArray*
 */
+(NSNumber*) getAllUsers :(NSString*) index 
     page_size:(NSString*) page_size 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for auto register users
 
 
 

 
 @param body User to register
 

 return type: MSAutoRegister*
 */
+(NSNumber*) autoRegisterUser :(MSAutoRegister*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSAutoRegister* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing user by email
 
 Get user by email
 

 
 @param email User email
 

 return type: MSUser*
 */
+(NSNumber*) findUserByEmail :(NSString*) email 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method to get all users by group
 
 
 

 
 @param groupCode 
 

 return type: NSArray*
 */
+(NSNumber*) getUsersByGroup :(NSString*) groupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


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

 Method for reset user password
 
 
 

 
 @param body User to reset password
 

 return type: MSResetPassword*
 */
+(NSNumber*) resetPassword :(MSResetPassword*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSResetPassword* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


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

 Method for auto register users
 
 
 

 
 @param token token
 
 @param pass pass
 
 @param captchaId captchaId
 

 return type: MSAutoRegister*
 */
+(NSNumber*) updatePassword :(NSString*) token 
     pass:(NSString*) pass 
     captchaId:(NSString*) captchaId 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSAutoRegister* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get user info from oauth user
 
 Get user info from oauth user
 

 

 return type: MSUser*
 */
+(NSNumber*) whoIam :(OAuth1Client *) auth onSuccess:
    (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing user by code
 
 Get user by code
 

 
 @param userCode User code
 

 return type: MSUser*
 */
+(NSNumber*) findUserByCode :(NSString*) userCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

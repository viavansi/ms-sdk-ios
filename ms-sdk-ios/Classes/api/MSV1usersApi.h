#import <Foundation/Foundation.h>
#import "MSUser.h"
#import "MSTemplate.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV1usersApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for register or update users
 
 
 

 
 @param body User to register
 

 return type: MSUser*
 */
+(NSNumber*) registerUser :(MSUser*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for user login
 
 Login user
 

 
 @param code 
 
 @param password 
 

 return type: MSUser*
 */
+(NSNumber*) loginUser :(NSString*) code 
     password:(NSString*) password 
    
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

 Method for get an existing user by code
 
 Get user by code
 

 
 @param userCode User code
 

 return type: MSUser*
 */
+(NSNumber*) findUserByCode :(NSString*) userCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for associate a template to an existing user by code
 
 Put a template to a user by code
 

 
 @param userCode User code
 
 @param templateCode Template code
 

 return type: MSTemplate*
 */
+(NSNumber*) putUserTemplateByCode :(NSString*) userCode 
     templateCode:(NSString*) templateCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSTemplate* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

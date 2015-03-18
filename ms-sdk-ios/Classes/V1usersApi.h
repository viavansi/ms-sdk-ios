#import <Foundation/Foundation.h>
#import "User.h"
#import "Template.h"
#import "SWGObject.h"


@interface V1usersApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(V1usersApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Method for register or update users
 
 
 

 
 @param body User to register
 

 return type: Void*
 */
-(NSNumber*) registerUserWithCompletionBlock :(User*) body 
    
    completionHandler: (void (^)(User* output, NSError* error))completionBlock;
    


/**

 Method for user login
 
 Login user
 

 
 @param code 
 
 @param password 
 

 return type: User*
 */
-(NSNumber*) loginUserWithCompletionBlock :(NSString*) code 
     password:(NSString*) password 
    
    completionHandler: (void (^)(User* output, NSError* error))completionBlock;
    


/**

 Method for get an existing user by code
 
 Get user by code
 

 
 @param userCode User code
 

 return type: User*
 */
-(NSNumber*) findUserByCodeWithCompletionBlock :(NSString*) userCode 
    
    completionHandler: (void (^)(User* output, NSError* error))completionBlock;
    


/**

 Method for associate a template to an existing user by code
 
 Put a template to a user by code
 

 
 @param userCode User code
 
 @param templateCode Template code
 

 return type: Template*
 */
-(NSNumber*) putUserTemplateByCodeWithCompletionBlock :(NSString*) userCode 
     templateCode:(NSString*) templateCode 
    
    completionHandler: (void (^)(Template* output, NSError* error))completionBlock;
    



@end
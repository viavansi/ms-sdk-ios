#import <Foundation/Foundation.h>
#import "Token.h"
#import "SWGObject.h"


@interface V1oauthApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(V1oauthApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Method for register new access token
 
 
 

 
 @param x_auth_mode x_auth_mode
 
 @param x_auth_username x_auth_username
 
 @param x_auth_password x_auth_password
 

 return type: Token*
 */
-(NSNumber*) accessTokenWithCompletionBlock :(NSString*) x_auth_mode 
     x_auth_username:(NSString*) x_auth_username 
     x_auth_password:(NSString*) x_auth_password 
    
    completionHandler: (void (^)(Token* output, NSError* error))completionBlock;
    


/**

 Method for register new access token
 
 
 

 

 return type: Token*
 */
-(NSNumber*) requestTokenWithCompletionBlock :
    (void (^)(Token* output, NSError* error))completionBlock;
    



@end
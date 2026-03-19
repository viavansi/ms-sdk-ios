#import <Foundation/Foundation.h>
#import "MSPublicAuthConfig.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3configApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Returns public auth configuration for the default frontend app
 
 
 

 

 return type: MSPublicAuthConfig*
 */
+(NSNumber*) getAuthConfig :(OAuth1Client *) auth onSuccess:
    (void (^)(MSPublicAuthConfig* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Returns public auth configuration for the given app
 
 
 

 
 @param appCode Application code
 

 return type: MSPublicAuthConfig*
 */
+(NSNumber*) getAuthConfigByApp :(NSString*) appCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSPublicAuthConfig* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

#import <Foundation/Foundation.h>
#import "MSIdenticaRequestResult.h"
#import "MSIdenticaRequest.h"
#import "MSIdenticaStatusRequest.h"
#import "MSIdenticaStatusResult.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3identicaApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for requesting device capture
 
 
 

 
 @param body Identica Request
 

 return type: MSIdenticaRequestResult*
 */
+(NSNumber*) requestFingerprint :(MSIdenticaRequest*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSIdenticaRequestResult* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for retrieving capture status
 
 
 

 
 @param body Identica status request
 

 return type: MSIdenticaStatusResult*
 */
+(NSNumber*) requestFingerprintStatus :(MSIdenticaStatusRequest*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSIdenticaStatusResult* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

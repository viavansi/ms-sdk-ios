#import <Foundation/Foundation.h>
#import "MSIdenticaRequestResult.h"
#import "MSIdenticaStatusResult.h"
#import "SWGObject.h"


@interface MSV3identicaApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for requesting device capture
 
 
 

 
 @param identicaServer Identica URL
 
 @param clientId clientId
 
 @param serialId serialId
 
 @param userId userId
 

 return type: MSIdenticaRequestResult*
 */
+(NSNumber*) requestFingerprint :(NSString*) identicaServer 
     clientId:(NSString*) clientId 
     serialId:(NSString*) serialId 
     userId:(NSString*) userId 
    
    onSuccess: (void (^)(MSIdenticaRequestResult* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for retrieving capture status
 
 
 

 
 @param identicaServer Identica URL
 
 @param requestId requestId
 

 return type: MSIdenticaStatusResult*
 */
+(NSNumber*) requestFingerprintStatus :(NSString*) identicaServer 
     requestId:(NSString*) requestId 
    
    onSuccess: (void (^)(MSIdenticaStatusResult* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
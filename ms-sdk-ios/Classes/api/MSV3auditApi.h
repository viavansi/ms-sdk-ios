#import <Foundation/Foundation.h>
#import "MSAuditoryInfo.h"
#import "MSAuditTrail.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3auditApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for get an existing message audit trail
 
 Get audit trail
 

 
 @param signatureCode Signature identifier
 

 return type: MSAuditoryInfo*
 */
+(NSNumber*) getSignatureAuditById :(NSString*) signatureCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSAuditoryInfo* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing message audit trail
 
 Get audit trail
 

 
 @param messageCode Message identifier
 

 return type: MSAuditTrail*
 */
+(NSNumber*) getAuditTrailByCode :(NSString*) messageCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSAuditTrail* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

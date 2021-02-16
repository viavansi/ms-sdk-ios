#import <Foundation/Foundation.h>
#import "MSMessageSetResponse.h"
#import "MSMessageSet.h"
#import "MSMessageSetInfo.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3setApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for send messages set
 
 
 

 
 @param body Messages Set Data
 

 return type: MSMessageSetResponse*
 */
+(NSNumber*) sendMessageSet :(MSMessageSet*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSetResponse* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing message set summary
 
 Get message set
 

 
 @param setCode Message&#39;s set identifier
 
 @param recipientKey Recipient key identifier
 

 return type: MSMessageSetInfo*
 */
+(NSNumber*) getInfoSetByRecipient :(NSString*) setCode 
     recipientKey:(NSString*) recipientKey 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSetInfo* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for reject an existing message set
 
 Reject set
 

 
 @param setCode setCode
 
 @param comment comment
 

 return type: MSMessageSetResponse*
 */
+(NSNumber*) rejectSetByCode :(NSString*) setCode 
     comment:(NSString*) comment 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSetResponse* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for resend set notification
 
 Method for resend 
 

 
 @param setCode Set Code
 

 return type: MSMessageSet*
 */
+(NSNumber*) resendNotificationByRecipient :(NSString*) setCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSet* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get an existing message set summary
 
 Get message set
 

 
 @param setCode Message&#39;s set identifier
 

 return type: MSMessageSetResponse*
 */
+(NSNumber*) getMessageSetByCode :(NSString*) setCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessageSetResponse* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

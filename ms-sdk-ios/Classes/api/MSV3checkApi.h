#import <Foundation/Foundation.h>
#import "MSCheck.h"
#import "SWGObject.h"


@interface MSV3checkApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for confirm an existing check in message
 
 Confirm check
 

 
 @param messageCode messageCode
 
 @param checkCode checkCode
 
 @param validateCode validateCode
 

 return type: MSCheck*
 */
+(NSNumber*) confirmCheck :(NSString*) messageCode 
     checkCode:(NSString*) checkCode 
     validateCode:(NSString*) validateCode 
    
    onSuccess: (void (^)(MSCheck* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for reject an existing check in message
 
 Reject check
 

 
 @param messageCode messageCode
 
 @param checkCode checkCode
 
 @param comment comment
 
 @param validateCode validateCode
 

 return type: MSCheck*
 */
+(NSNumber*) rejectCheck :(NSString*) messageCode 
     checkCode:(NSString*) checkCode 
     comment:(NSString*) comment 
     validateCode:(NSString*) validateCode 
    
    onSuccess: (void (^)(MSCheck* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
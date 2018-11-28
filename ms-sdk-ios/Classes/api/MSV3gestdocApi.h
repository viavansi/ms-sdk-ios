#import <Foundation/Foundation.h>
#import "MSNotification.h"
#import "MSGestDocRequest.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3gestdocApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for create messages with gestdoc info by misdn
 
 Get notifications by app, user and device
 

 
 @param body Gestdoc object that needs to search transactions
 

 return type: NSArray*
 */
+(NSNumber*) sendGestdocTransactionByMsisdn :(MSGestDocRequest*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for create messages with gestdoc info by vedor id
 
 Get notifications by app, user and device
 

 
 @param body Gestdoc object that needs to search transactions
 

 return type: NSArray*
 */
+(NSNumber*) sendGestdocTransactionByVendor :(MSGestDocRequest*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

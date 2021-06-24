#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3internalApi: NSObject

+(unsigned long) requestQueueSize;
/**

 
 

 
 @param metrics_pass 
 

 return type: 
 */
+(NSNumber*) health :(NSString*) metrics_pass 
    
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;


/**

 
 

 
 @param metrics_pass 
 

 return type: 
 */
+(NSNumber*) metrics :(NSString*) metrics_pass 
    
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;


/**

 
 

 
 @param metrics_pass 
 

 return type: 
 */
+(NSNumber*) prometheus :(NSString*) metrics_pass 
    
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;



@end

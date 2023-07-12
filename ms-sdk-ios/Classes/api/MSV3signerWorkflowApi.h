#import <Foundation/Foundation.h>
#import "MSSignerWorkflow.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3signerWorkflowApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for send signerWorkflow
 
 
 

 
 @param body Signer Workflow Data
 

 return type: MSSignerWorkflow*
 */
+(NSNumber*) save :(MSSignerWorkflow*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSSignerWorkflow* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get signer workflows
 
 Get signer workflows
 

 
 @param userCode userCode
 
 @param groupCode groupCode
 

 return type: NSArray*
 */
+(NSNumber*) getSignerWorkflowByUser :(NSString*) userCode 
     groupCode:(NSString*) groupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for delete signer workflow
 
 Return code
 

 
 @param code Signer workflow code
 
 @param userCode userCode
 
 @param groupCode groupCode
 

 return type: NSString*
 */
+(NSNumber*) removeSignerWorkflow :(NSString*) code 
     userCode:(NSString*) userCode 
     groupCode:(NSString*) groupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

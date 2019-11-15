#import <Foundation/Foundation.h>
#import "MSGroup.h"
#import "MSUser.h"
#import "MSMessage.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3groupsApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for create groups
 
 
 

 
 @param body Group to create
 

 return type: MSUser*
 */
+(NSNumber*) createGroup :(MSGroup*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for create groups
 
 
 

 
 @param body Group to create
 
 @param parentGroupCode Parent group&#39;s identifier
 

 return type: MSUser*
 */
+(NSNumber*) createGroupByParentGroup :(MSGroup*) body 
     parentGroupCode:(NSString*) parentGroupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUser* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get group style
 
 Get group style
 

 
 @param groupCode Group&#39;s identifier
 

 return type: MSMessage*
 */
+(NSNumber*) getSignPageStyle :(NSString*) groupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

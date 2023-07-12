#import <Foundation/Foundation.h>
#import "MSGroup.h"
#import "MSAppCustomization.h"
#import "MSUser.h"
#import "MSCustomization.h"
#import "MSSignPageStyle.h"
#import "MSGroupInfo.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3groupsApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method only for admin apps to get all groups
 
 
 

 

 return type: NSArray*
 */
+(NSNumber*) getAllGroups :(OAuth1Client *) auth onSuccess:
    (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get group style for app
 
 Get group style
 

 
 @param groupCode Group&#39;s identifier
 

 return type: MSAppCustomization*
 */
+(NSNumber*) getAppStyle :(NSString*) groupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSAppCustomization* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method to obtain all the groups in which the application is found.
 
 
 

 

 return type: NSArray*
 */
+(NSNumber*) getAllGroupsByApp :(OAuth1Client *) auth onSuccess:
    (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


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

 
 

 
 @param groupCode Group&#39;s identifier
 

 return type: 
 */
+(NSNumber*) getGroupCustomizationNotification :(NSString*) groupCode 
    
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;


/**

 
 

 
 @param groupCode Group&#39;s identifier
 
 @param body 
 

 return type: 
 */
+(NSNumber*) updateGroupCustomizationNotification :(NSString*) groupCode 
     body:(MSCustomization*) body 
    
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(void))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;


/**

 Method for get default group style
 
 Get default group style
 

 

 return type: MSSignPageStyle*
 */
+(NSNumber*) getSignPageStyleDefault :(OAuth1Client *) auth onSuccess:
    (void (^)(MSSignPageStyle* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get group style
 
 Get group style
 

 
 @param groupCode Group&#39;s identifier
 

 return type: MSSignPageStyle*
 */
+(NSNumber*) getSignPageStyle :(NSString*) groupCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSSignPageStyle* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for update groups
 
 
 

 
 @param body Group to update
 

 return type: MSGroupInfo*
 */
+(NSNumber*) updateGroup :(MSGroupInfo*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSGroupInfo* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

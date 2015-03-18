#import <Foundation/Foundation.h>
#import "Message.h"
#import "SWGObject.h"


@interface V1messagesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(V1messagesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Method for delivery new message
 
 Delivery new message
 

 
 @param body Message object that needs to be delivery
 

 return type: NSString*
 */
-(NSNumber*) sendMessageWithCompletionBlock :(Message*) body 
    
    completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;
    


/**

 Method for reject an existing message
 
 Reject message
 

 
 @param messageCode messageCode
 
 @param comment comment
 

 return type: Message*
 */
-(NSNumber*) rejectMessageByCodeWithCompletionBlock :(NSString*) messageCode 
     comment:(NSString*) comment 
    
    completionHandler: (void (^)(Message* output, NSError* error))completionBlock;
    


/**

 Method for get an existing message
 
 Get message
 

 
 @param messageCode Message&#39;s identifier
 

 return type: Message*
 */
-(NSNumber*) getMessageByCodeWithCompletionBlock :(NSString*) messageCode 
    
    completionHandler: (void (^)(Message* output, NSError* error))completionBlock;
    



@end
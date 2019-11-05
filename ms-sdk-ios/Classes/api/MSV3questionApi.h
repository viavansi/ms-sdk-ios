#import <Foundation/Foundation.h>
#import "MSParam.h"
#import "MSQuestionary.h"
#import "MSQuestionaryValidation.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3questionApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for get questionary info
 
 Get questionary evidence info
 

 
 @param messageCode Message&#39;s unique code
 
 @param evidenceCode Evidence code
 
 @param body Parameter&#39;s list
 

 return type: MSQuestionary*
 */
+(NSNumber*) requestQuestionary :(NSString*) messageCode 
     evidenceCode:(NSString*) evidenceCode 
     body:(NSArray*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSQuestionary* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Validate questionary info
 
 Validate questionary evidence info
 

 
 @param messageCode Message&#39;s unique code
 
 @param evidenceCode Evidence&#39;s unique code
 
 @param body Questionary object that needs to be delivery
 

 return type: MSQuestionaryValidation*
 */
+(NSNumber*) validateQuestionary :(NSString*) messageCode 
     evidenceCode:(NSString*) evidenceCode 
     body:(MSQuestionary*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSQuestionaryValidation* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

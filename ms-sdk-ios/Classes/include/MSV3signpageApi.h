#import <Foundation/Foundation.h>
#import "MSSignPageLocalizables.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3signpageApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Returns app configuration for a target app
 
 
 

 
 @param groupCode Group code
 
 @param languageId Language id. Ex: es_ES, en_EN,..
 

 return type: MSSignPageLocalizables*
 */
+(NSNumber*) getLocalizables :(NSString*) groupCode 
     languageId:(NSString*) languageId 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSSignPageLocalizables* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

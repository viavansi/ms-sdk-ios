#import <Foundation/Foundation.h>
#import "MSTemplateList.h"
#import "MSDocument.h"
#import "MSDownload.h"
#import "MSTemplate.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3templateApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for list user templates
 
 
 

 
 @param userCode userCode
 

 return type: NSArray*
 */
+(NSNumber*) findTemplatesByUser :(NSString*) userCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for generate pdf
 
 
 

 
 @param body Document info
 

 return type: MSDownload*
 */
+(NSNumber*) generatePdf :(MSDocument*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method get template pdf by code
 
 
 

 
 @param code code
 

 return type: MSDownload*
 */
+(NSNumber*) downloadTemplatePdfByCode :(NSString*) code 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method get template info by code
 
 
 

 
 @param code code
 

 return type: MSTemplate*
 */
+(NSNumber*) findTemplateByCode :(NSString*) code 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSTemplate* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

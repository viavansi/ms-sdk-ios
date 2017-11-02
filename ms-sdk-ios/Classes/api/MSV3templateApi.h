#import <Foundation/Foundation.h>
#import "MSDownload.h"
#import "MSTemplateList.h"
#import "MSDocument.h"
#import "MSTemplate.h"
#import "SWGObject.h"


@interface MSV3templateApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for download font from server
 
 Get a ttf font
 

 
 @param fontName Font&#39;s unique name
 

 return type: MSDownload*
 */
+(NSNumber*) downloadFontByName :(NSString*) fontName 
    
    onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for list user templates
 
 
 

 
 @param userCode userCode
 

 return type: NSArray*
 */
+(NSNumber*) findTemplatesByUser :(NSString*) userCode 
    
    onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for generate pdf
 
 
 

 
 @param body Document info
 

 return type: MSDownload*
 */
+(NSNumber*) generatePdf :(MSDocument*) body 
    
    onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method get template pdf by code
 
 
 

 
 @param code code
 

 return type: MSDownload*
 */
+(NSNumber*) downloadTemplatePdfByCode :(NSString*) code 
    
    onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method get template info by code
 
 
 

 
 @param code code
 

 return type: MSTemplate*
 */
+(NSNumber*) findTemplateByCode :(NSString*) code 
    
    onSuccess: (void (^)(MSTemplate* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
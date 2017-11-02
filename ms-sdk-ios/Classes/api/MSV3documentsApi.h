#import <Foundation/Foundation.h>
#import "MSDocumentCache.h"
#import "MSBase64.h"
#import "MSDownload.h"
#import "SWGObject.h"


@interface MSV3documentsApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Add document to cache
 
 
 

 
 @param body Base64 document
 

 return type: MSDocumentCache*
 */
+(NSNumber*) addCache :(MSBase64*) body 
    
    onSuccess: (void (^)(MSDocumentCache* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get preview of an existing document
 
 Get preview document
 

 
 @param messageCode Message&#39;s unique code
 

 return type: MSDownload*
 */
+(NSNumber*) downloadPreview :(NSString*) messageCode 
    
    onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get signed document
 
 Get signed document
 

 
 @param messageCode Message&#39;s unique code
 

 return type: MSDownload*
 */
+(NSNumber*) downloadSigned :(NSString*) messageCode 
    
    onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get temporal document
 
 Get temporal document
 

 
 @param messageCode Message&#39;s unique code
 

 return type: MSDownload*
 */
+(NSNumber*) downloadTemporal :(NSString*) messageCode 
    
    onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
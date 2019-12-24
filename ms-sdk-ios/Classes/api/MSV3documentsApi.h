#import <Foundation/Foundation.h>
#import "MSBase64.h"
#import "MSDownload.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3documentsApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Add cache
 
 Add cache
 

 
 @param body Base64 document
 

 return type: NSString*
 */
+(NSNumber*) addCache :(MSBase64*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get preview of an existing document
 
 Get preview document
 

 
 @param messageCode Message&#39;s unique code
 

 return type: MSDownload*
 */
+(NSNumber*) downloadPreview :(NSString*) messageCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get signed document
 
 Get signed document
 

 
 @param messageCode Message&#39;s unique code
 

 return type: MSDownload*
 */
+(NSNumber*) downloadSigned :(NSString*) messageCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get temporal document
 
 Get temporal document
 

 
 @param messageCode Message&#39;s unique code
 

 return type: MSDownload*
 */
+(NSNumber*) downloadTemporal :(NSString*) messageCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for delete document
 
 Return message code
 

 
 @param messageCode Message&#39;s unique code
 

 return type: NSString*
 */
+(NSNumber*) removeSignedDocument :(NSString*) messageCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSString* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for get document
 
 Return byte[] with the document
 

 
 @param type Document&#39;s type
 
 @param messageCode Message&#39;s unique code
 
 @param documentCode Document&#39;s unique code
 

 return type: NSArray*
 */
+(NSNumber*) getDocument :(NSString*) type 
     messageCode:(NSString*) messageCode 
     documentCode:(NSString*) documentCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

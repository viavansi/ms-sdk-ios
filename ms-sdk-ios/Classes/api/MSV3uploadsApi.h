#import <Foundation/Foundation.h>
#import "MSUpload.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3uploadsApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method get link for download file
 
 
 

 
 @param token JWT Token
 

 return type: MSUpload*
 */
+(NSNumber*) getDownloadLink :(NSString*) token 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUpload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method get link for temporal upload file
 
 
 

 
 @param extension File extension
 

 return type: MSUpload*
 */
+(NSNumber*) getUploadLink :(NSString*) extension 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSUpload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

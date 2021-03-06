#import <Foundation/Foundation.h>
#import "MSOcrMaskImage.h"
#import "MSOcrPageResult.h"
#import "MSOcrScanImageCustom.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3ocrApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for get mask for scanning document
 
 
 

 
 @param template Template key identifier
 
 @param width Mask width
 

 return type: MSOcrMaskImage*
 */
+(NSNumber*) mask :(NSString*) template 
     width:(NSString*) width 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSOcrMaskImage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for scan document with ocr
 
 Scan document (image)
 

 
 @param body Data for scan document
 

 return type: MSOcrPageResult*
 */
+(NSNumber*) parse :(MSOcrScanImageCustom*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSOcrPageResult* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

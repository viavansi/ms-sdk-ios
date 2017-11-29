#import <Foundation/Foundation.h>
#import "MSEvidence.h"
#import "MSDownload.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3genericApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method to build image for a generic evidence
 
 Return generic evidence image
 

 
 @param body evidence
 

 return type: MSDownload*
 */
+(NSNumber*) genericImageForEvidence :(MSEvidence*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDownload* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

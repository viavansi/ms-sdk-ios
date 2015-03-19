#import <Foundation/Foundation.h>
#import "MSConfiguration.h"
#import "SWGObject.h"


@interface MSV1configurationApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Returns app configuration for a target app
 
 
 

 
 @param appIdentifier Application identifier
 

 return type: MSConfiguration*
 */
+(NSNumber*) getDeviceConfiguration :(NSString*) appIdentifier 
    
    onSuccess: (void (^)(MSConfiguration* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
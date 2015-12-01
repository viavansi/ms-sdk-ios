#import <Foundation/Foundation.h>
#import "MSDevice.h"
#import "SWGObject.h"


@interface MSV3devicesApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for register or update devices
 
 
 

 
 @param body Device to register
 

 return type: MSDevice*
 */
+(NSNumber*) registerDevice :(MSDevice*) body 
    
    onSuccess: (void (^)(MSDevice* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Finds devices by User
 
 Multiple values can be provided with comma seperated
 

 
 @param userCode User code
 

 return type: NSArray*
 */
+(NSNumber*) findDeviceByUser :(NSString*) userCode 
    
    onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Finds Device by identifier
 
 
 

 
 @param identifier Unique identifier
 

 return type: MSDevice*
 */
+(NSNumber*) findDeviceByIdentifier :(NSString*) identifier 
    
    onSuccess: (void (^)(MSDevice* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
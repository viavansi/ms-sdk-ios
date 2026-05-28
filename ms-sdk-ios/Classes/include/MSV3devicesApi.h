#import <Foundation/Foundation.h>
#import "MSDevice.h"
#import "MSMessageDevice.h"
#import "MSMessage.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3devicesApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for register or update devices
 
 
 

 
 @param body Device to register
 

 return type: MSDevice*
 */
+(NSNumber*) registerDevice :(MSDevice*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDevice* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 A device can be modify in messages and messageSets
 
 Modify Device for Message
 

 
 @param body JSMessageDevice object that needs to modify a device in a message
 

 return type: MSMessage*
 */
+(NSNumber*) modifyDeviceMessage :(MSMessageDevice*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSMessage* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Finds devices by User
 
 Multiple values can be provided with comma seperated
 

 
 @param userCode User code
 

 return type: NSArray*
 */
+(NSNumber*) findDeviceByUser :(NSString*) userCode 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(NSArray* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Finds Device by identifier
 
 
 

 
 @param identifier Unique identifier
 

 return type: MSDevice*
 */
+(NSNumber*) findDeviceByIdentifier :(NSString*) identifier 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSDevice* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

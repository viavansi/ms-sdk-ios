#import <Foundation/Foundation.h>
#import "Device.h"
#import "SWGObject.h"


@interface V1devicesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(V1devicesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Method for register or update devices
 
 
 

 
 @param body Device to register
 

 return type: Device*
 */
-(NSNumber*) registerDeviceWithCompletionBlock :(Device*) body 
    
    completionHandler: (void (^)(Device* output, NSError* error))completionBlock;
    


/**

 Finds devices by User
 
 Multiple values can be provided with comma seperated
 

 
 @param userCode User code
 

 return type: NSArray*
 */
-(NSNumber*) findDeviceByUserWithCompletionBlock :(NSString*) userCode 
    
    completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;
    


/**

 Finds Device by identifier
 
 
 

 
 @param identifier Unique identifier
 

 return type: Device*
 */
-(NSNumber*) findDeviceByIdentifierWithCompletionBlock :(NSString*) identifier 
    
    completionHandler: (void (^)(Device* output, NSError* error))completionBlock;
    



@end
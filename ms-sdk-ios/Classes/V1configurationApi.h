#import <Foundation/Foundation.h>
#import "Void.h"
#import "SWGObject.h"


@interface V1configurationApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(V1configurationApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Returns app configuration for a target app
 
 
 

 
 @param appIdentifier Application identifier
 

 return type: Void*
 */
-(NSNumber*) getDeviceConfigurationWithCompletionBlock :(NSString*) appIdentifier 
    
    completionHandler: (void (^)(Void* output, NSError* error))completionBlock;
    



@end
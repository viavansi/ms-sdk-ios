#import <Foundation/Foundation.h>
#import "InfoSystemStatus.h"
#import "SWGObject.h"


@interface V1systemApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(V1systemApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Returns device configuration for a target app
 
 
 

 

 return type: InfoSystemStatus*
 */
-(NSNumber*) getSystemInfoWithCompletionBlock :
    (void (^)(InfoSystemStatus* output, NSError* error))completionBlock;
    



@end
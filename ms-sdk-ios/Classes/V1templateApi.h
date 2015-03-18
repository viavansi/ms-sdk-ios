#import <Foundation/Foundation.h>
#import "TemplateList.h"
#import "Template.h"
#import "SWGObject.h"


@interface V1templateApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(V1templateApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Method for list user templates
 
 
 

 
 @param userCode userCode
 

 return type: NSArray*
 */
-(NSNumber*) findTemplatesByUserWithCompletionBlock :(NSString*) userCode 
    
    completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;
    


/**

 Method get template info by code
 
 
 

 
 @param code code
 

 return type: Template*
 */
-(NSNumber*) findTemplateByCodeWithCompletionBlock :(NSString*) code 
    
    completionHandler: (void (^)(Template* output, NSError* error))completionBlock;
    



@end
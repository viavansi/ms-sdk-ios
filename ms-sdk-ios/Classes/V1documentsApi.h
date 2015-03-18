#import <Foundation/Foundation.h>
#import "Void.h"
#import "SWGObject.h"


@interface V1documentsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(V1documentsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Method for get an existing document
 
 Get document
 

 
 @param type Document&#39;s type
 
 @param messageCode Message&#39;s unique code
 
 @param documentCode Document&#39;s unique code
 

 return type: Void*
 */
-(NSNumber*) getDocumentWithCompletionBlock :(NSString*) type 
     messageCode:(NSString*) messageCode 
     documentCode:(NSString*) documentCode 
    
    completionHandler: (void (^)(Void* output, NSError* error))completionBlock;
    



@end
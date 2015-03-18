#import <Foundation/Foundation.h>
#import "Evidence.h"
#import "SWGObject.h"


@interface V1evidencesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(V1evidencesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 evidenceUpdate
 
 Add data in evidence
 

 
 @param messageCode messageCode
 
 @param policyCode policyCode
 
 @param evidenceCode evidenceCode
 
 @param imageBase64 imageBase64
 
 @param metadata metadata
 
 @param fingerID fingerID
 
 @param algorithmic algorithmic
 

 return type: Evidence*
 */
-(NSNumber*) updateWithCompletionBlock :(NSString*) messageCode 
     policyCode:(NSString*) policyCode 
     evidenceCode:(NSString*) evidenceCode 
     imageBase64:(NSString*) imageBase64 
     metadata:(NSString*) metadata 
     fingerID:(NSString*) fingerID 
     algorithmic:(NSString*) algorithmic 
    
    completionHandler: (void (^)(Evidence* output, NSError* error))completionBlock;
    


/**

 evidenceUpload
 
 File to add to the evidence
 

 
 @param messageCode 
 
 @param policyCode 
 
 @param evidenceCode 
 
 @param archive 
 
 @param metadata 
 
 @param fingerID 
 
 @param algorithmic 
 

 return type: Evidence*
 */
-(NSNumber*) sendEvidenceWithCompletionBlock :(NSString*) messageCode 
     policyCode:(NSString*) policyCode 
     evidenceCode:(NSString*) evidenceCode 
     archive:() archive 
     metadata:(NSString*) metadata 
     fingerID:(NSString*) fingerID 
     algorithmic:(NSString*) algorithmic 
    
    completionHandler: (void (^)(Evidence* output, NSError* error))completionBlock;
    



@end
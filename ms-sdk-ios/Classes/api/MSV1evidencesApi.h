#import <Foundation/Foundation.h>
#import "MSEvidence.h"
#import "SWGObject.h"


@interface MSV1evidencesApi: NSObject

+(unsigned long) requestQueueSize;
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
 

 return type: MSEvidence*
 */
+(NSNumber*) sendEvidence :(NSString*) messageCode 
     policyCode:(NSString*) policyCode 
     evidenceCode:(NSString*) evidenceCode 
     imageBase64:(NSString*) imageBase64 
     metadata:(NSString*) metadata 
     fingerID:(NSString*) fingerID 
     algorithmic:(NSString*) algorithmic 
    
    onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
#import <Foundation/Foundation.h>
#import "MSEvidence.h"
#import "MSEvidenceFingerPrint.h"
#import "MSEvidenceImage.h"
#import "MSEvidenceSignature.h"
#import "SWGObject.h"
#import "OAuth1Client.h"


@interface MSV3evidencesApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for add images as evidence
 
 Add new evidence (image)
 

 
 @param body Data for update selected evidence
 

 return type: MSEvidence*
 */
+(NSNumber*) addFingerPrintAsEvidence :(MSEvidenceFingerPrint*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for add images as evidence
 
 Add new evidence (image)
 

 
 @param body Data for update selected evidence
 

 return type: MSEvidence*
 */
+(NSNumber*) addImageAsEvidence :(MSEvidenceImage*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for add images as evidence
 
 Add new evidence (image)
 

 
 @param body Data for update selected evidence
 

 return type: MSEvidence*
 */
+(NSNumber*) addSignatureAsEvidence :(MSEvidenceSignature*) body 
    
    auth:(OAuth1Client *) auth onSuccess: (void (^)(MSEvidence* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end

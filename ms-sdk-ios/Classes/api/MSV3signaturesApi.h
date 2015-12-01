#import <Foundation/Foundation.h>
#import "MSPolicy.h"
#import "MSEvidenceSignature.h"
#import "MSSignature.h"
#import "SWGObject.h"


@interface MSV3signaturesApi: NSObject

+(unsigned long) requestQueueSize;
/**

 Method for process a server signature
 
 
 

 
 @param body Data for update selected evidence
 

 return type: MSPolicy*
 */
+(NSNumber*) addDigitalizedSignature :(MSEvidenceSignature*) body 
    
    onSuccess: (void (^)(MSPolicy* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    


/**

 Method for process a server signature
 
 
 

 
 @param messageCode messageCode
 
 @param signatureCode signatureCode
 

 return type: MSSignature*
 */
+(NSNumber*) addServerSignature :(NSString*) messageCode 
     signatureCode:(NSString*) signatureCode 
    
    onSuccess: (void (^)(MSSignature* response))onSuccessBlock onError:(void (^)(NSError* error)) onErrorBlock;
    



@end
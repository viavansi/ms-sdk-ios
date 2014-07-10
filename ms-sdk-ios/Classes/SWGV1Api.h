#import <Foundation/Foundation.h>
#import "SWGPolicy.h"
#import "SWGToken.h"
#import "SWGUser.h"
#import "SWGEvidence.h"
#import "SWGFile.h"
#import "SWGMessage.h"
#import "SWGDevice.h"
#import "SWGForm.h"
#import "SWGNotification.h"


@interface SWGV1Api: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGV1Api*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(SWGV1Api*) apiWithOauth:(NSString*)consumerKey secret:(NSString*)secret;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Method for register or update devices
 
 @param body Device to register
 */
-(NSNumber*) registerDeviceWithCompletionBlock :(SWGDevice*) body 
        completionHandler: (void (^)(SWGDevice* output, NSError* error))completionBlock;

/**

 Finds Device by identifier
 
 @param identifier Unique identifier
 */
-(NSNumber*) findDeviceByIdentifierWithCompletionBlock :(NSString*) identifier 
        completionHandler: (void (^)(SWGDevice* output, NSError* error))completionBlock;

/**

 Finds devices by User
 Multiple values can be provided with comma seperated
 @param userCode User code
 */
-(NSNumber*) findDeviceByUserWithCompletionBlock :(NSString*) userCode 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Method for get an existing document
 Get document
 @param type Document's type
 @param messageCode Message's unique code
 @param documentCode Document's unique code
 */
-(NSNumber*) getDocumentWithCompletionBlock :(NSString*) type 
        messageCode:(NSString*) messageCode 
        documentCode:(NSString*) documentCode 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 evidenceUpload
 File to add to the evidence
 @param messageCode 
 @param policyCode 
 @param evidenceCode 
 @param body 
 @param metadata 
 @param fingerID 
 @param algorithmic 
 */
-(NSNumber*) sendEvidenceWithCompletionBlock :(NSString*) messageCode 
        policyCode:(NSString*) policyCode 
        evidenceCode:(NSString*) evidenceCode 
        body:(SWGFile*) body 
        metadata:(NSString*) metadata 
        fingerID:(NSString*) fingerID 
        algorithmic:(NSString*) algorithmic 
        completionHandler: (void (^)(SWGEvidence* output, NSError* error))completionBlock;

/**

 Method for list user forms
 
 @param code code
 */
-(NSNumber*) findFormsByUserWithCompletionBlock :(NSString*) code 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Method for delivery new message
 Delivery new message
 @param body Message object that needs to be delivery
 */
-(NSNumber*) sendMessageWithCompletionBlock :(SWGMessage*) body 
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;

/**

 Method for get an existing message
 Get message
 @param messageCode Message's identifier
 */
-(NSNumber*) getMessageByCodeWithCompletionBlock :(NSString*) messageCode 
        completionHandler: (void (^)(SWGMessage* output, NSError* error))completionBlock;

/**

 Method for send new notifications
 Send new notifications
 @param body Notification object that needs to be delivery
 */
-(NSNumber*) sendNotificationWithCompletionBlock :(SWGNotification*) body 
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;

/**

 Method for get a notification's list by token
 Get notifications by token
 @param token Device token
 */
-(NSNumber*) findNotificationsByTokenWithCompletionBlock :(NSString*) token 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Method for get a notification's list by token
 Get notifications by token
 @param token Device token
 @param status Notification Status
 */
-(NSNumber*) findNotificationsByTokenStatusWithCompletionBlock :(NSString*) token 
        status:(NSString*) status 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Method for get a notification by code
 Get notification by code
 @param code Notification code
 */
-(NSNumber*) findNotificationsByCodeWithCompletionBlock :(NSString*) code 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Method for send new notifications
 Send new notifications
 @param code Notification Code
 @param status Notification Status
 */
-(NSNumber*) changeNotificationStatusWithCompletionBlock :(NSString*) code 
        status:(NSString*) status 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Method for prepare signatures
 
 @param messageCode Message's identifier
 @param policyCode Policy's identifier
 @param userCode User's identifier
 */
-(NSNumber*) prepareSignatureWithCompletionBlock :(NSString*) messageCode 
        policyCode:(NSString*) policyCode 
        userCode:(NSString*) userCode 
        completionHandler: (void (^)(SWGPolicy* output, NSError* error))completionBlock;

/**

 Method for register signatures
 
 @param messageCode Message's identifier
 @param policyCode Policy's identifier
 @param signatureCode Signature's identifier
 */
-(NSNumber*) registerSignatureWithCompletionBlock :(NSString*) messageCode 
        policyCode:(NSString*) policyCode 
        signatureCode:(NSString*) signatureCode 
        completionHandler: (void (^)(SWGPolicy* output, NSError* error))completionBlock;

/**

 Method for register or update users
 
 @param body User to register
 */
-(NSNumber*) registerUserWithCompletionBlock :(SWGUser*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Method for get an existing user by code
 Get user by code
 @param userCode User code
 */
-(NSNumber*) findUserByCodeWithCompletionBlock :(NSString*) userCode 
        completionHandler: (void (^)(SWGUser* output, NSError* error))completionBlock;

/**

 Method for register new access token
 
 */
-(NSNumber*) postRequestTokenWithCompletionBlock :(void (^)(SWGToken* output, NSError* error))completionBlock;

/**

 Method for register new access token
 
 @param x_auth_username x_auth_username
 @param x_auth_password x_auth_password
 @param x_auth_mode x_auth_mode
 */
-(NSNumber*) postAccessTokenWithCompletionBlock :(NSString*) x_auth_username 
        x_auth_password:(NSString*) x_auth_password 
        x_auth_mode:(NSString*) x_auth_mode 
        completionHandler: (void (^)(SWGToken* output, NSError* error))completionBlock;

@end

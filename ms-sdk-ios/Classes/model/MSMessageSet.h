#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSCustomization.h"
#import "MSParam.h"
#import "MSMessage.h"
#import "MSRecipient.h"


@interface MSMessageSet : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSNumber* expires;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSNumber* retryTime;  
@property(nonatomic) NSNumber* retryCount;  
@property(nonatomic) NSString* externalCode;  
@property(nonatomic) NSString* externalStatus;  
@property(nonatomic) NSString* userCode;  
@property(nonatomic) NSArray* recipients;  
@property(nonatomic) MSCustomization* customization;  
@property(nonatomic) NSArray* messages;  
@property(nonatomic) NSArray* metadataList;  
@property(nonatomic) NSNumber* messagesStep;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSNumber* autoFinalize;  
@property(nonatomic) NSString* callbackURL;  
@property(nonatomic) NSString* callbackAuthorization;  
@property(nonatomic) NSString* callbackMails;  
@property(nonatomic) NSString* callbackRedirectURL;  
@property(nonatomic) NSString* callbackRedirectURLTargetWindow;  
@property(nonatomic) NSString* callbackType;  
- (id) code: (NSString*) code     
    groupCode: (NSString*) groupCode     
    expires: (NSNumber*) expires     
    retryTime: (NSNumber*) retryTime     
    retryCount: (NSNumber*) retryCount     
    externalCode: (NSString*) externalCode     
    externalStatus: (NSString*) externalStatus     
    userCode: (NSString*) userCode     
    recipients: (NSArray*) recipients     
    customization: (MSCustomization*) customization     
    messages: (NSArray*) messages     
    metadataList: (NSArray*) metadataList     
    messagesStep: (NSNumber*) messagesStep     
    title: (NSString*) title     
    _description: (NSString*) _description     
    autoFinalize: (NSNumber*) autoFinalize     
    callbackURL: (NSString*) callbackURL     
    callbackAuthorization: (NSString*) callbackAuthorization     
    callbackMails: (NSString*) callbackMails     
    callbackRedirectURL: (NSString*) callbackRedirectURL     
    callbackRedirectURLTargetWindow: (NSString*) callbackRedirectURLTargetWindow     
    callbackType: (NSString*) callbackType;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

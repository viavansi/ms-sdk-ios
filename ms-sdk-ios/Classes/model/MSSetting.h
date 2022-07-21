#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSCustomization.h"
#import "MSParam.h"
#import "MSPolicy.h"
#import "MSAcrofieldPosition.h"
#import "MSFont.h"


@interface MSSetting : SWGObject

@property(nonatomic) NSString* titleKey;  
@property(nonatomic) NSString* descriptionKey;  
@property(nonatomic) MSPolicy* policy;  
@property(nonatomic) NSString* computec_key;  
@property(nonatomic) NSArray* policies;  
@property(nonatomic) NSString* callbackAuthorization;  
@property(nonatomic) NSString* callbackURL;  
@property(nonatomic) NSString* callbackCheckListMails;  
@property(nonatomic) NSString* callbackMails;  
@property(nonatomic) NSString* callbackPhones;  
@property(nonatomic) NSArray* callbackMailsFormKeys;  
@property(nonatomic) NSString* validateCode;  
@property(nonatomic) NSString* validateCodeFinish;  
@property(nonatomic) NSString* validateCodeType;  
@property(nonatomic) NSString* validateOtpText;  
@property(nonatomic) NSString* validateOtpSubject;  
@property(nonatomic) NSString* workflow;  
@property(nonatomic) MSFont* font;  
@property(nonatomic) NSArray* acrofieldsPositions;  
@property(nonatomic) NSNumber* readDocumentRequired;  
@property(nonatomic) NSNumber* allowDocumentResend;  
@property(nonatomic) NSString* autoFinalize;  
@property(nonatomic) MSCustomization* customization;  
@property(nonatomic) NSArray* callbackMailsFromForm;  
@property(nonatomic) NSString* callbackMailFilename;  
@property(nonatomic) NSArray* metadataList;  
@property(nonatomic) NSNumber* retryTime;  
@property(nonatomic) NSNumber* retryCount;  
@property(nonatomic) NSString* workflowReferenceCode;  
- (id) titleKey: (NSString*) titleKey     
    descriptionKey: (NSString*) descriptionKey     
    policy: (MSPolicy*) policy     
    computec_key: (NSString*) computec_key     
    policies: (NSArray*) policies     
    callbackAuthorization: (NSString*) callbackAuthorization     
    callbackURL: (NSString*) callbackURL     
    callbackCheckListMails: (NSString*) callbackCheckListMails     
    callbackMails: (NSString*) callbackMails     
    callbackPhones: (NSString*) callbackPhones     
    callbackMailsFormKeys: (NSArray*) callbackMailsFormKeys     
    validateCode: (NSString*) validateCode     
    validateCodeFinish: (NSString*) validateCodeFinish     
    validateCodeType: (NSString*) validateCodeType     
    validateOtpText: (NSString*) validateOtpText     
    validateOtpSubject: (NSString*) validateOtpSubject     
    workflow: (NSString*) workflow     
    font: (MSFont*) font     
    acrofieldsPositions: (NSArray*) acrofieldsPositions     
    readDocumentRequired: (NSNumber*) readDocumentRequired     
    allowDocumentResend: (NSNumber*) allowDocumentResend     
    autoFinalize: (NSString*) autoFinalize     
    customization: (MSCustomization*) customization     
    callbackMailsFromForm: (NSArray*) callbackMailsFromForm     
    callbackMailFilename: (NSString*) callbackMailFilename     
    metadataList: (NSArray*) metadataList     
    retryTime: (NSNumber*) retryTime     
    retryCount: (NSNumber*) retryCount     
    workflowReferenceCode: (NSString*) workflowReferenceCode;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

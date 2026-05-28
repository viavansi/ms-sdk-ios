#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSCustomization.h"
#import "MSParam.h"
#import "MSDevice.h"
#import "MSSharedLink.h"


@interface MSNotification : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* validateCode;  
@property(nonatomic) NSString* validateCodeType;  
@property(nonatomic) NSString* validateOperationId;  
@property(nonatomic) NSString* validateOtpStatus;  
@property(nonatomic) NSString* validateOtpText;  
@property(nonatomic) NSString* validateOtpSubject;  
@property(nonatomic) NSString* validateCodeFinish;  
@property(nonatomic) NSString* text;  
@property(nonatomic) NSString* detail;  
@property(nonatomic) NSString* sound;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* notificationType;  
@property(nonatomic) NSString* smsType;  
@property(nonatomic) NSString* location;  
@property(nonatomic) MSSharedLink* sharedLink;  
@property(nonatomic) NSNumber* updateDate;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSNumber* retryTime;  
@property(nonatomic) NSNumber* retryCount;  
@property(nonatomic) MSCustomization* customization;  
@property(nonatomic) NSString* deliveryGroup;  
@property(nonatomic) NSString* deliveryUsers;  
@property(nonatomic) NSString* deliveryType;  
@property(nonatomic) NSString* deliveryAppCode;  
@property(nonatomic) NSArray* metadata;  
@property(nonatomic) NSArray* devices;  
@property(nonatomic) NSString* recipientKey;  
- (id) code: (NSString*) code     
    messageCode: (NSString*) messageCode     
    validateCode: (NSString*) validateCode     
    validateCodeType: (NSString*) validateCodeType     
    validateOperationId: (NSString*) validateOperationId     
    validateOtpStatus: (NSString*) validateOtpStatus     
    validateOtpText: (NSString*) validateOtpText     
    validateOtpSubject: (NSString*) validateOtpSubject     
    validateCodeFinish: (NSString*) validateCodeFinish     
    text: (NSString*) text     
    detail: (NSString*) detail     
    sound: (NSString*) sound     
    status: (NSString*) status     
    notificationType: (NSString*) notificationType     
    smsType: (NSString*) smsType     
    location: (NSString*) location     
    sharedLink: (MSSharedLink*) sharedLink     
    updateDate: (NSNumber*) updateDate     
    retryTime: (NSNumber*) retryTime     
    retryCount: (NSNumber*) retryCount     
    customization: (MSCustomization*) customization     
    deliveryGroup: (NSString*) deliveryGroup     
    deliveryUsers: (NSString*) deliveryUsers     
    deliveryType: (NSString*) deliveryType     
    deliveryAppCode: (NSString*) deliveryAppCode     
    metadata: (NSArray*) metadata     
    devices: (NSArray*) devices     
    recipientKey: (NSString*) recipientKey;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

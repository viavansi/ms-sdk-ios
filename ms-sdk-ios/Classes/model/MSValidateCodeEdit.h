#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSValidateCodeEdit : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* setCode;  
@property(nonatomic) NSString* recipientKey;  
@property(nonatomic) NSString* validateCode;  
@property(nonatomic) NSString* validateCodeType;  
@property(nonatomic) NSString* validateOtpSubject;  
@property(nonatomic) NSString* validateOtpText;  
@property(nonatomic) NSString* email;  
@property(nonatomic) NSString* phone;  
- (id) messageCode: (NSString*) messageCode     
    setCode: (NSString*) setCode     
    recipientKey: (NSString*) recipientKey     
    validateCode: (NSString*) validateCode     
    validateCodeType: (NSString*) validateCodeType     
    validateOtpSubject: (NSString*) validateOtpSubject     
    validateOtpText: (NSString*) validateOtpText     
    email: (NSString*) email     
    phone: (NSString*) phone;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

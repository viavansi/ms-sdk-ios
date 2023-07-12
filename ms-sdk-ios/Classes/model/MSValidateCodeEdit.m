#import "SWGDate.h"
#import "MSValidateCodeEdit.h"

@implementation MSValidateCodeEdit

@synthesize messageCode = _messageCode;
@synthesize setCode = _setCode;
@synthesize recipientKey = _recipientKey;
@synthesize validateCode = _validateCode;
@synthesize validateCodeType = _validateCodeType;
@synthesize validateOtpSubject = _validateOtpSubject;
@synthesize validateOtpText = _validateOtpText;
@synthesize email = _email;
@synthesize phone = _phone;

-(id)messageCode: (NSString*) messageCode
    setCode: (NSString*) setCode
    recipientKey: (NSString*) recipientKey
    validateCode: (NSString*) validateCode
    validateCodeType: (NSString*) validateCodeType
    validateOtpSubject: (NSString*) validateOtpSubject
    validateOtpText: (NSString*) validateOtpText
    email: (NSString*) email
    phone: (NSString*) phone
    
{
    _messageCode = messageCode;
    _setCode = setCode;
    _recipientKey = recipientKey;
    _validateCode = validateCode;
    _validateCodeType = validateCodeType;
    _validateOtpSubject = validateOtpSubject;
    _validateOtpText = validateOtpText;
    _email = email;
    _phone = phone;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        _setCode = dict[@"setCode"];
        
        _recipientKey = dict[@"recipientKey"];
        
        _validateCode = dict[@"validateCode"];
        
        _validateCodeType = dict[@"validateCodeType"];
        
        _validateOtpSubject = dict[@"validateOtpSubject"];
        
        _validateOtpText = dict[@"validateOtpText"];
        
        _email = dict[@"email"];
        
        _phone = dict[@"phone"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_setCode != nil) dict[@"setCode"] = _setCode ;
        
    
    
            if(_recipientKey != nil) dict[@"recipientKey"] = _recipientKey ;
        
    
    
            if(_validateCode != nil) dict[@"validateCode"] = _validateCode ;
        
    
    
            if(_validateCodeType != nil) dict[@"validateCodeType"] = _validateCodeType ;
        
    
    
            if(_validateOtpSubject != nil) dict[@"validateOtpSubject"] = _validateOtpSubject ;
        
    
    
            if(_validateOtpText != nil) dict[@"validateOtpText"] = _validateOtpText ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_phone != nil) dict[@"phone"] = _phone ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

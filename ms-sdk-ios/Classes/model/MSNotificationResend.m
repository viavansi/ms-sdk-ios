#import "SWGDate.h"
#import "MSNotificationResend.h"

@implementation MSNotificationResend

@synthesize messageCode = _messageCode;
@synthesize email = _email;
@synthesize phone = _phone;
@synthesize userCode = _userCode;
@synthesize deviceCode = _deviceCode;

-(id)messageCode: (NSString*) messageCode
    email: (NSString*) email
    phone: (NSString*) phone
    userCode: (NSString*) userCode
    deviceCode: (NSString*) deviceCode
    
{
    _messageCode = messageCode;
    _email = email;
    _phone = phone;
    _userCode = userCode;
    _deviceCode = deviceCode;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        _email = dict[@"email"];
        
        _phone = dict[@"phone"];
        
        _userCode = dict[@"userCode"];
        
        _deviceCode = dict[@"deviceCode"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_phone != nil) dict[@"phone"] = _phone ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(_deviceCode != nil) dict[@"deviceCode"] = _deviceCode ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

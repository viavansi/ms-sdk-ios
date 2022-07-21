#import "SWGDate.h"
#import "MSNotificationResend.h"

@implementation MSNotificationResend

@synthesize setCode = _setCode;
@synthesize recipientKey = _recipientKey;
@synthesize email = _email;
@synthesize phone = _phone;
@synthesize notificationType = _notificationType;

-(id)setCode: (NSString*) setCode
    recipientKey: (NSString*) recipientKey
    email: (NSString*) email
    phone: (NSString*) phone
    notificationType: (NSString*) notificationType
    
{
    _setCode = setCode;
    _recipientKey = recipientKey;
    _email = email;
    _phone = phone;
    _notificationType = notificationType;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _setCode = dict[@"setCode"];
        
        _recipientKey = dict[@"recipientKey"];
        
        _email = dict[@"email"];
        
        _phone = dict[@"phone"];
        
        _notificationType = dict[@"notificationType"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_setCode != nil) dict[@"setCode"] = _setCode ;
        
    
    
            if(_recipientKey != nil) dict[@"recipientKey"] = _recipientKey ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_phone != nil) dict[@"phone"] = _phone ;
        
    
    
            if(_notificationType != nil) dict[@"notificationType"] = _notificationType ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

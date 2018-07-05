#import "SWGDate.h"
#import "MSNotificationResend.h"

@implementation MSNotificationResend

@synthesize messageCode = _messageCode;
@synthesize email = _email;
@synthesize phone = _phone;

-(id)messageCode: (NSString*) messageCode
    email: (NSString*) email
    phone: (NSString*) phone
    
{
    _messageCode = messageCode;
    _email = email;
    _phone = phone;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        _email = dict[@"email"];
        
        _phone = dict[@"phone"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_phone != nil) dict[@"phone"] = _phone ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

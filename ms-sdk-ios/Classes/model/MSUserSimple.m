#import "SWGDate.h"
#import "MSUserSimple.h"

@implementation MSUserSimple

@synthesize code = _code;
@synthesize nationalId = _nationalId;
@synthesize email = _email;
@synthesize password = _password;
@synthesize name = _name;
@synthesize surname = _surname;
@synthesize _description = __description;
@synthesize status = _status;
@synthesize mobile = _mobile;
@synthesize channel = _channel;

-(id)code: (NSString*) code
    nationalId: (NSString*) nationalId
    email: (NSString*) email
    password: (NSString*) password
    name: (NSString*) name
    surname: (NSString*) surname
    _description: (NSString*) _description
    status: (NSString*) status
    mobile: (NSString*) mobile
    channel: (NSString*) channel
    
{
    _code = code;
    _nationalId = nationalId;
    _email = email;
    _password = password;
    _name = name;
    _surname = surname;
    __description = _description;
    _status = status;
    _mobile = mobile;
    _channel = channel;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _nationalId = dict[@"nationalId"];
        
        _email = dict[@"email"];
        
        _password = dict[@"password"];
        
        _name = dict[@"name"];
        
        _surname = dict[@"surname"];
        
        __description = dict[@"description"];
        
        _status = dict[@"status"];
        
        _mobile = dict[@"mobile"];
        
        _channel = dict[@"channel"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_nationalId != nil) dict[@"nationalId"] = _nationalId ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_password != nil) dict[@"password"] = _password ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_surname != nil) dict[@"surname"] = _surname ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_mobile != nil) dict[@"mobile"] = _mobile ;
        
    
    
            if(_channel != nil) dict[@"channel"] = _channel ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

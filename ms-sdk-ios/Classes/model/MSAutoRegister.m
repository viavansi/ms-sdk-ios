#import "SWGDate.h"
#import "MSAutoRegister.h"

@implementation MSAutoRegister

@synthesize mail = _mail;
@synthesize name = _name;
@synthesize surname = _surname;
@synthesize captchaId = _captchaId;
@synthesize remoteIp = _remoteIp;
@synthesize invitationCode = _invitationCode;
@synthesize mobile = _mobile;

-(id)mail: (NSString*) mail
    name: (NSString*) name
    surname: (NSString*) surname
    captchaId: (NSString*) captchaId
    remoteIp: (NSString*) remoteIp
    invitationCode: (NSString*) invitationCode
    mobile: (NSString*) mobile
    
{
    _mail = mail;
    _name = name;
    _surname = surname;
    _captchaId = captchaId;
    _remoteIp = remoteIp;
    _invitationCode = invitationCode;
    _mobile = mobile;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _mail = dict[@"mail"];
        
        _name = dict[@"name"];
        
        _surname = dict[@"surname"];
        
        _captchaId = dict[@"captchaId"];
        
        _remoteIp = dict[@"remoteIp"];
        
        _invitationCode = dict[@"invitationCode"];
        
        _mobile = dict[@"mobile"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_mail != nil) dict[@"mail"] = _mail ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_surname != nil) dict[@"surname"] = _surname ;
        
    
    
            if(_captchaId != nil) dict[@"captchaId"] = _captchaId ;
        
    
    
            if(_remoteIp != nil) dict[@"remoteIp"] = _remoteIp ;
        
    
    
            if(_invitationCode != nil) dict[@"invitationCode"] = _invitationCode ;
        
    
    
            if(_mobile != nil) dict[@"mobile"] = _mobile ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

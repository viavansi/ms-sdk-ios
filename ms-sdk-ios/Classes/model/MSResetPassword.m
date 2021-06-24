#import "SWGDate.h"
#import "MSResetPassword.h"

@implementation MSResetPassword

@synthesize mail = _mail;
@synthesize groupCode = _groupCode;
@synthesize captchaId = _captchaId;
@synthesize remoteIp = _remoteIp;

-(id)mail: (NSString*) mail
    groupCode: (NSString*) groupCode
    captchaId: (NSString*) captchaId
    remoteIp: (NSString*) remoteIp
    
{
    _mail = mail;
    _groupCode = groupCode;
    _captchaId = captchaId;
    _remoteIp = remoteIp;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _mail = dict[@"mail"];
        
        _groupCode = dict[@"groupCode"];
        
        _captchaId = dict[@"captchaId"];
        
        _remoteIp = dict[@"remoteIp"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_mail != nil) dict[@"mail"] = _mail ;
        
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_captchaId != nil) dict[@"captchaId"] = _captchaId ;
        
    
    
            if(_remoteIp != nil) dict[@"remoteIp"] = _remoteIp ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSSharedLink.h"

@implementation MSSharedLink

-(id)scheme: (NSString*) scheme
    token: (NSString*) token
    link: (NSString*) link
    appCode: (NSString*) appCode
    email: (NSString*) email
    
{
    _scheme = scheme;
    _token = token;
    _link = link;
    _appCode = appCode;
    _email = email;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _scheme = dict[@"scheme"];
        
        _token = dict[@"token"];
        
        _link = dict[@"link"];
        
        _appCode = dict[@"appCode"];
        
        _email = dict[@"email"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_scheme != nil) dict[@"scheme"] = _scheme ;
        
    
    
            if(_token != nil) dict[@"token"] = _token ;
        
    
    
            if(_link != nil) dict[@"link"] = _link ;
        
    
    
            if(_appCode != nil) dict[@"appCode"] = _appCode ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

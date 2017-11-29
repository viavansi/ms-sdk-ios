#import "SWGDate.h"
#import "MSSharedLink.h"

@implementation MSSharedLink

@synthesize scheme = _scheme;
@synthesize token = _token;
@synthesize link = _link;
@synthesize appCode = _appCode;
@synthesize email = _email;
@synthesize subject = _subject;
@synthesize phone = _phone;

-(id)scheme: (NSString*) scheme
    token: (NSString*) token
    link: (NSString*) link
    appCode: (NSString*) appCode
    email: (NSString*) email
    subject: (NSString*) subject
    phone: (NSString*) phone
    
{
    _scheme = scheme;
    _token = token;
    _link = link;
    _appCode = appCode;
    _email = email;
    _subject = subject;
    _phone = phone;
    

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
        
        _subject = dict[@"subject"];
        
        _phone = dict[@"phone"];
        
        
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
        
    
    
            if(_subject != nil) dict[@"subject"] = _subject ;
        
    
    
            if(_phone != nil) dict[@"phone"] = _phone ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSGroupUserData.h"

@implementation MSGroupUserData

@synthesize code = _code;
@synthesize name = _name;
@synthesize userName = _userName;
@synthesize surname = _surname;
@synthesize email = _email;
@synthesize phone = _phone;
@synthesize templates = _templates;
@synthesize sendMail = _sendMail;

-(id)code: (NSString*) code
    name: (NSString*) name
    userName: (NSString*) userName
    surname: (NSString*) surname
    email: (NSString*) email
    phone: (NSString*) phone
    templates: (NSString*) templates
    sendMail: (NSNumber*) sendMail
    
{
    _code = code;
    _name = name;
    _userName = userName;
    _surname = surname;
    _email = email;
    _phone = phone;
    _templates = templates;
    _sendMail = sendMail;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _name = dict[@"name"];
        
        _userName = dict[@"userName"];
        
        _surname = dict[@"surname"];
        
        _email = dict[@"email"];
        
        _phone = dict[@"phone"];
        
        _templates = dict[@"templates"];
        
        _sendMail = dict[@"sendMail"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_userName != nil) dict[@"userName"] = _userName ;
        
    
    
            if(_surname != nil) dict[@"surname"] = _surname ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_phone != nil) dict[@"phone"] = _phone ;
        
    
    
            if(_templates != nil) dict[@"templates"] = _templates ;
        
    
    
            if(_sendMail != nil) dict[@"sendMail"] = _sendMail ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

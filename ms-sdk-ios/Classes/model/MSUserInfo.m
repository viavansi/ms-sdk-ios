#import "SWGDate.h"
#import "MSUserInfo.h"

@implementation MSUserInfo

@synthesize code = _code;
@synthesize nationalId = _nationalId;
@synthesize email = _email;
@synthesize name = _name;
@synthesize surname = _surname;
@synthesize mobile = _mobile;

-(id)code: (NSString*) code
    nationalId: (NSString*) nationalId
    email: (NSString*) email
    name: (NSString*) name
    surname: (NSString*) surname
    mobile: (NSString*) mobile
    
{
    _code = code;
    _nationalId = nationalId;
    _email = email;
    _name = name;
    _surname = surname;
    _mobile = mobile;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _nationalId = dict[@"nationalId"];
        
        _email = dict[@"email"];
        
        _name = dict[@"name"];
        
        _surname = dict[@"surname"];
        
        _mobile = dict[@"mobile"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_nationalId != nil) dict[@"nationalId"] = _nationalId ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_surname != nil) dict[@"surname"] = _surname ;
        
    
    
            if(_mobile != nil) dict[@"mobile"] = _mobile ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

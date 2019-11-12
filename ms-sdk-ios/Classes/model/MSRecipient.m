#import "SWGDate.h"
#import "MSRecipient.h"

@implementation MSRecipient

@synthesize key = _key;
@synthesize phone = _phone;
@synthesize mail = _mail;
@synthesize name = _name;
@synthesize notificationType = _notificationType;
@synthesize userCode = _userCode;
@synthesize _id = __id;

-(id)key: (NSString*) key
    phone: (NSString*) phone
    mail: (NSString*) mail
    name: (NSString*) name
    notificationType: (NSString*) notificationType
    userCode: (NSString*) userCode
    _id: (NSString*) _id
    
{
    _key = key;
    _phone = phone;
    _mail = mail;
    _name = name;
    _notificationType = notificationType;
    _userCode = userCode;
    __id = _id;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"];
        
        _phone = dict[@"phone"];
        
        _mail = dict[@"mail"];
        
        _name = dict[@"name"];
        
        _notificationType = dict[@"notificationType"];
        
        _userCode = dict[@"userCode"];
        
        __id = dict[@"id"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_phone != nil) dict[@"phone"] = _phone ;
        
    
    
            if(_mail != nil) dict[@"mail"] = _mail ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_notificationType != nil) dict[@"notificationType"] = _notificationType ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

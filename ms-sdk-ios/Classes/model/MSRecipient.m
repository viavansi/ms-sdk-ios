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
@synthesize status = _status;
@synthesize order = _order;
@synthesize deviceCode = _deviceCode;
@synthesize presential = _presential;
@synthesize label = _label;
@synthesize optional = _optional;

-(id)key: (NSString*) key
    phone: (NSString*) phone
    mail: (NSString*) mail
    name: (NSString*) name
    notificationType: (NSString*) notificationType
    userCode: (NSString*) userCode
    _id: (NSString*) _id
    status: (NSString*) status
    order: (NSNumber*) order
    deviceCode: (NSString*) deviceCode
    presential: (NSNumber*) presential
    label: (NSString*) label
    optional: (NSNumber*) optional
    
{
    _key = key;
    _phone = phone;
    _mail = mail;
    _name = name;
    _notificationType = notificationType;
    _userCode = userCode;
    __id = _id;
    _status = status;
    _order = order;
    _deviceCode = deviceCode;
    _presential = presential;
    _label = label;
    _optional = optional;
    

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
        
        _status = dict[@"status"];
        
        _order = dict[@"order"];
        
        _deviceCode = dict[@"deviceCode"];
        
        _presential = dict[@"presential"];
        
        _label = dict[@"label"];
        
        _optional = dict[@"optional"];
        
        
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
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_order != nil) dict[@"order"] = _order ;
        
    
    
            if(_deviceCode != nil) dict[@"deviceCode"] = _deviceCode ;
        
    
    
            if(_presential != nil) dict[@"presential"] = _presential ;
        
    
    
            if(_label != nil) dict[@"label"] = _label ;
        
    
    
            if(_optional != nil) dict[@"optional"] = _optional ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

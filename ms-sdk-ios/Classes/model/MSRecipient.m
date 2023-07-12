#import "SWGDate.h"
#import "MSRecipient.h"

@implementation MSRecipient

@synthesize key = _key;
@synthesize phone = _phone;
@synthesize mail = _mail;
@synthesize name = _name;
@synthesize notificationType = _notificationType;
@synthesize smsType = _smsType;
@synthesize userCode = _userCode;
@synthesize _id = __id;
@synthesize status = _status;
@synthesize order = _order;
@synthesize deviceCode = _deviceCode;
@synthesize appCode = _appCode;
@synthesize presential = _presential;
@synthesize label = _label;
@synthesize optional = _optional;
@synthesize callbackType = _callbackType;

-(id)key: (NSString*) key
    phone: (NSString*) phone
    mail: (NSString*) mail
    name: (NSString*) name
    notificationType: (NSString*) notificationType
    smsType: (NSString*) smsType
    userCode: (NSString*) userCode
    _id: (NSString*) _id
    status: (NSString*) status
    order: (NSNumber*) order
    deviceCode: (NSString*) deviceCode
    appCode: (NSString*) appCode
    presential: (NSNumber*) presential
    label: (NSString*) label
    optional: (NSNumber*) optional
    callbackType: (NSString*) callbackType
    
{
    _key = key;
    _phone = phone;
    _mail = mail;
    _name = name;
    _notificationType = notificationType;
    _smsType = smsType;
    _userCode = userCode;
    __id = _id;
    _status = status;
    _order = order;
    _deviceCode = deviceCode;
    _appCode = appCode;
    _presential = presential;
    _label = label;
    _optional = optional;
    _callbackType = callbackType;
    

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
        
        _smsType = dict[@"smsType"];
        
        _userCode = dict[@"userCode"];
        
        __id = dict[@"id"];
        
        _status = dict[@"status"];
        
        _order = dict[@"order"];
        
        _deviceCode = dict[@"deviceCode"];
        
        _appCode = dict[@"appCode"];
        
        _presential = dict[@"presential"];
        
        _label = dict[@"label"];
        
        _optional = dict[@"optional"];
        
        _callbackType = dict[@"callbackType"];
        
        
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
        
    
    
            if(_smsType != nil) dict[@"smsType"] = _smsType ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_order != nil) dict[@"order"] = _order ;
        
    
    
            if(_deviceCode != nil) dict[@"deviceCode"] = _deviceCode ;
        
    
    
            if(_appCode != nil) dict[@"appCode"] = _appCode ;
        
    
    
            if(_presential != nil) dict[@"presential"] = _presential ;
        
    
    
            if(_label != nil) dict[@"label"] = _label ;
        
    
    
            if(_optional != nil) dict[@"optional"] = _optional ;
        
    
    
            if(_callbackType != nil) dict[@"callbackType"] = _callbackType ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

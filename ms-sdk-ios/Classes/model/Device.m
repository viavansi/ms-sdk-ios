#import "SWGDate.h"
#import "Device.h"

@implementation Device

-(id)appCode: (NSString*) appCode
    code: (NSString*) code
    _description: (NSString*) _description
    locale: (NSString*) locale
    status: (NSString*) status
    token: (NSString*) token
    uniqueIdentifier: (NSString*) uniqueIdentifier
    type: (NSString*) type
    userEmail: (NSString*) userEmail
    userCode: (NSString*) userCode
    userNationalId: (NSString*) userNationalId
    
{
    _appCode = appCode;
    _code = code;
    __description = _description;
    _locale = locale;
    _status = status;
    _token = token;
    _uniqueIdentifier = uniqueIdentifier;
    _type = type;
    _userEmail = userEmail;
    _userCode = userCode;
    _userNationalId = userNationalId;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _appCode = dict[@"appCode"];
        
        _code = dict[@"code"];
        
        __description = dict[@"description"];
        
        _locale = dict[@"locale"];
        
        _status = dict[@"status"];
        
        _token = dict[@"token"];
        
        _uniqueIdentifier = dict[@"uniqueIdentifier"];
        
        _type = dict[@"type"];
        
        _userEmail = dict[@"userEmail"];
        
        _userCode = dict[@"userCode"];
        
        _userNationalId = dict[@"userNationalId"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_appCode != nil) dict[@"appCode"] = _appCode ;
        
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_locale != nil) dict[@"locale"] = _locale ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_token != nil) dict[@"token"] = _token ;
        
    
    
            if(_uniqueIdentifier != nil) dict[@"uniqueIdentifier"] = _uniqueIdentifier ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_userEmail != nil) dict[@"userEmail"] = _userEmail ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(_userNationalId != nil) dict[@"userNationalId"] = _userNationalId ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSJSGestDocRequest.h"

@implementation MSJSGestDocRequest

@synthesize appCode = _appCode;
@synthesize userCode = _userCode;
@synthesize deviceCode = _deviceCode;
@synthesize identifier = _identifier;

-(id)appCode: (NSString*) appCode
    userCode: (NSString*) userCode
    deviceCode: (NSString*) deviceCode
    identifier: (NSString*) identifier
    
{
    _appCode = appCode;
    _userCode = userCode;
    _deviceCode = deviceCode;
    _identifier = identifier;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _appCode = dict[@"appCode"];
        
        _userCode = dict[@"userCode"];
        
        _deviceCode = dict[@"deviceCode"];
        
        _identifier = dict[@"identifier"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_appCode != nil) dict[@"appCode"] = _appCode ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(_deviceCode != nil) dict[@"deviceCode"] = _deviceCode ;
        
    
    
            if(_identifier != nil) dict[@"identifier"] = _identifier ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

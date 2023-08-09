#import "SWGDate.h"
#import "MSMessageDevice.h"

@implementation MSMessageDevice

@synthesize code = _code;
@synthesize recipientKey = _recipientKey;
@synthesize deviceCode = _deviceCode;
@synthesize userCode = _userCode;

-(id)code: (NSString*) code
    recipientKey: (NSString*) recipientKey
    deviceCode: (NSString*) deviceCode
    userCode: (NSString*) userCode
    
{
    _code = code;
    _recipientKey = recipientKey;
    _deviceCode = deviceCode;
    _userCode = userCode;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _recipientKey = dict[@"recipientKey"];
        
        _deviceCode = dict[@"deviceCode"];
        
        _userCode = dict[@"userCode"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_recipientKey != nil) dict[@"recipientKey"] = _recipientKey ;
        
    
    
            if(_deviceCode != nil) dict[@"deviceCode"] = _deviceCode ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

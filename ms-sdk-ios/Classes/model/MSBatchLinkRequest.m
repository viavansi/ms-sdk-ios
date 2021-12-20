#import "SWGDate.h"
#import "MSBatchLinkRequest.h"

@implementation MSBatchLinkRequest

@synthesize userCode = _userCode;
@synthesize groupCode = _groupCode;
@synthesize redirectURL = _redirectURL;
@synthesize otpRecipient = _otpRecipient;
@synthesize index = _index;
@synthesize max = _max;
@synthesize signType = _signType;

-(id)userCode: (NSString*) userCode
    groupCode: (NSString*) groupCode
    redirectURL: (NSString*) redirectURL
    otpRecipient: (NSString*) otpRecipient
    index: (NSNumber*) index
    max: (NSNumber*) max
    signType: (NSString*) signType
    
{
    _userCode = userCode;
    _groupCode = groupCode;
    _redirectURL = redirectURL;
    _otpRecipient = otpRecipient;
    _index = index;
    _max = max;
    _signType = signType;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _userCode = dict[@"userCode"];
        
        _groupCode = dict[@"groupCode"];
        
        _redirectURL = dict[@"redirectURL"];
        
        _otpRecipient = dict[@"otpRecipient"];
        
        _index = dict[@"index"];
        
        _max = dict[@"max"];
        
        _signType = dict[@"signType"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_redirectURL != nil) dict[@"redirectURL"] = _redirectURL ;
        
    
    
            if(_otpRecipient != nil) dict[@"otpRecipient"] = _otpRecipient ;
        
    
    
            if(_index != nil) dict[@"index"] = _index ;
        
    
    
            if(_max != nil) dict[@"max"] = _max ;
        
    
    
            if(_signType != nil) dict[@"signType"] = _signType ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSQuestionaryValidation.h"

@implementation MSQuestionaryValidation

@synthesize appId = _appId;
@synthesize valid = _valid;
@synthesize responseXML = _responseXML;
@synthesize respCurrentAttempt = _respCurrentAttempt;
@synthesize respMaxAttempts = _respMaxAttempts;

-(id)appId: (NSString*) appId
    valid: (NSNumber*) valid
    responseXML: (NSString*) responseXML
    respCurrentAttempt: (NSNumber*) respCurrentAttempt
    respMaxAttempts: (NSNumber*) respMaxAttempts
    
{
    _appId = appId;
    _valid = valid;
    _responseXML = responseXML;
    _respCurrentAttempt = respCurrentAttempt;
    _respMaxAttempts = respMaxAttempts;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _appId = dict[@"appId"];
        
        _valid = dict[@"valid"];
        
        _responseXML = dict[@"responseXML"];
        
        _respCurrentAttempt = dict[@"respCurrentAttempt"];
        
        _respMaxAttempts = dict[@"respMaxAttempts"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_appId != nil) dict[@"appId"] = _appId ;
        
    
    
            if(_valid != nil) dict[@"valid"] = _valid ;
        
    
    
            if(_responseXML != nil) dict[@"responseXML"] = _responseXML ;
        
    
    
            if(_respCurrentAttempt != nil) dict[@"respCurrentAttempt"] = _respCurrentAttempt ;
        
    
    
            if(_respMaxAttempts != nil) dict[@"respMaxAttempts"] = _respMaxAttempts ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

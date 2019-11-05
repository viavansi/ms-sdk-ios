#import "SWGDate.h"
#import "MSQuestionaryValidation.h"

@implementation MSQuestionaryValidation

@synthesize appId = _appId;
@synthesize valid = _valid;
@synthesize responseXML = _responseXML;

-(id)appId: (NSString*) appId
    valid: (NSNumber*) valid
    responseXML: (NSString*) responseXML
    
{
    _appId = appId;
    _valid = valid;
    _responseXML = responseXML;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _appId = dict[@"appId"];
        
        _valid = dict[@"valid"];
        
        _responseXML = dict[@"responseXML"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_appId != nil) dict[@"appId"] = _appId ;
        
    
    
            if(_valid != nil) dict[@"valid"] = _valid ;
        
    
    
            if(_responseXML != nil) dict[@"responseXML"] = _responseXML ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

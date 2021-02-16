#import "SWGDate.h"
#import "MSJSMatiStepError.h"

@implementation MSJSMatiStepError

@synthesize type = _type;
@synthesize code = _code;
@synthesize message = _message;

-(id)type: (NSString*) type
    code: (NSString*) code
    message: (NSString*) message
    
{
    _type = type;
    _code = code;
    _message = message;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _code = dict[@"code"];
        
        _message = dict[@"message"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_message != nil) dict[@"message"] = _message ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSErrorResponse.h"

@implementation MSErrorResponse

@synthesize code = _code;
@synthesize type = _type;
@synthesize message = _message;
@synthesize trace = _trace;

-(id)code: (NSNumber*) code
    type: (NSString*) type
    message: (NSString*) message
    trace: (NSString*) trace
    
{
    _code = code;
    _type = type;
    _message = message;
    _trace = trace;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _type = dict[@"type"];
        
        _message = dict[@"message"];
        
        _trace = dict[@"trace"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_message != nil) dict[@"message"] = _message ;
        
    
    
            if(_trace != nil) dict[@"trace"] = _trace ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

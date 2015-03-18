#import "SWGDate.h"
#import "ErrorResponse.h"

@implementation ErrorResponse

-(id)type: (NSString*) type
    message: (NSString*) message
    trace: (NSString*) trace
    
{
    _type = type;
    _message = message;
    _trace = trace;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _message = dict[@"message"];
        
        _trace = dict[@"trace"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_message != nil) dict[@"message"] = _message ;
        
    
    
            if(_trace != nil) dict[@"trace"] = _trace ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "SWGErrorResponse.h"

@implementation SWGErrorResponse

-(id)code: (NSNumber*) code
    status: (NSString*) status
    message: (NSString*) message
    trace: (NSString*) trace
{
  _code = code;
  _status = status;
  _message = message;
  _trace = trace;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"]; 
        _status = dict[@"status"]; 
        _message = dict[@"message"]; 
        _trace = dict[@"trace"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_code != nil) dict[@"code"] = _code ;
        if(_status != nil) dict[@"status"] = _status ;
        if(_message != nil) dict[@"message"] = _message ;
        if(_trace != nil) dict[@"trace"] = _trace ;
        NSDictionary* output = [dict copy];
    return output;
}

@end


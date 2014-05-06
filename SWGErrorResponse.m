#import "SWGDate.h"
#import "SWGErrorResponse.h"

@implementation SWGErrorResponse

-(id)_id: (NSString*) _id
    status: (NSNumber*) status
    errorCode: (NSString*) errorCode
    error: (NSString*) error
{
  __id = _id;
  _status = status;
  _errorCode = errorCode;
  _error = error;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"]; 
        _status = dict[@"status"]; 
        _errorCode = dict[@"errorCode"]; 
        _error = dict[@"error"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_status != nil) dict[@"status"] = _status ;
        if(_errorCode != nil) dict[@"errorCode"] = _errorCode ;
        if(_error != nil) dict[@"error"] = _error ;
        NSDictionary* output = [dict copy];
    return output;
}

@end


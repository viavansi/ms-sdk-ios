#import "SWGDate.h"
#import "MSSystemStatus.h"

@implementation MSSystemStatus

-(id)name: (NSString*) name
    _description: (NSString*) _description
    status: (NSString*) status
    message: (NSString*) message
    
{
    _name = name;
    __description = _description;
    _status = status;
    _message = message;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"];
        
        __description = dict[@"description"];
        
        _status = dict[@"status"];
        
        _message = dict[@"message"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_message != nil) dict[@"message"] = _message ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

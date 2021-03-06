#import "SWGDate.h"
#import "MSSystemStatus.h"

@implementation MSSystemStatus

@synthesize name = _name;
@synthesize _description = __description;
@synthesize status = _status;
@synthesize message = _message;
@synthesize localeKey = _localeKey;
@synthesize localeParams = _localeParams;
@synthesize notification = _notification;

-(id)name: (NSString*) name
    _description: (NSString*) _description
    status: (NSString*) status
    message: (NSString*) message
    localeKey: (NSString*) localeKey
    localeParams: (NSArray*) localeParams
    notification: (NSString*) notification
    
{
    _name = name;
    __description = _description;
    _status = status;
    _message = message;
    _localeKey = localeKey;
    _localeParams = localeParams;
    _notification = notification;
    

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
        
        _localeKey = dict[@"localeKey"];
        
        _localeParams = dict[@"localeParams"];
        
        _notification = dict[@"notification"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_message != nil) dict[@"message"] = _message ;
        
    
    
            if(_localeKey != nil) dict[@"localeKey"] = _localeKey ;
        
    
    
            if(_localeParams != nil) dict[@"localeParams"] = _localeParams ;
        
    
    
            if(_notification != nil) dict[@"notification"] = _notification ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

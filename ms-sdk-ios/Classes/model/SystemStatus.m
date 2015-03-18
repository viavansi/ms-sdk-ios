#import "SWGDate.h"
#import "SystemStatus.h"

@implementation SystemStatus

-(id)name: (NSString*) name
    _description: (NSString*) _description
    status: (Status*) status
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
        
        
        
        id status_dict = dict[@"status"];
        
        if(status_dict != nil)
            _status = [[Status  alloc]initWithValues:status_dict];
        
        
        _message = dict[@"message"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
    if(_status != nil){
        if([_status isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( Status *status in (NSArray*)_status) {
                [array addObject:[(SWGObject*)status asDictionary]];
            }
            dict[@"status"] = array;
        }
        else if(_status && [_status isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_status toString];
            if(dateString){
                dict[@"status"] = dateString;
            }
        }
        else {
        
            if(_status != nil) dict[@"status"] = [(SWGObject*)_status asDictionary];
        
        }
    }
    
    
    
            if(_message != nil) dict[@"message"] = _message ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

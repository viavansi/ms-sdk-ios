#import "SWGDate.h"
#import "MSStatus.h"

@implementation MSStatus

-(id)current: (NSString*) current
    next: (NSString*) next
    
{
    _current = current;
    _next = next;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _current = dict[@"current"];
        
        _next = dict[@"next"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_current != nil) dict[@"current"] = _current ;
        
    
    
            if(_next != nil) dict[@"next"] = _next ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

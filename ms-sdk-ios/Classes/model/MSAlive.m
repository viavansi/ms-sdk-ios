#import "SWGDate.h"
#import "MSAlive.h"

@implementation MSAlive

-(id)isAlive: (NSString*) isAlive
    pid: (NSString*) pid
    
{
    _isAlive = isAlive;
    _pid = pid;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _isAlive = dict[@"isAlive"];
        
        _pid = dict[@"pid"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_isAlive != nil) dict[@"isAlive"] = _isAlive ;
        
    
    
            if(_pid != nil) dict[@"pid"] = _pid ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSSystemInfo.h"

@implementation MSSystemInfo

@synthesize loadAverage = _loadAverage;
@synthesize memory = _memory;
@synthesize cpu = _cpu;

-(id)loadAverage: (NSString*) loadAverage
    memory: (NSString*) memory
    cpu: (NSString*) cpu
    
{
    _loadAverage = loadAverage;
    _memory = memory;
    _cpu = cpu;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _loadAverage = dict[@"loadAverage"];
        
        _memory = dict[@"memory"];
        
        _cpu = dict[@"cpu"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_loadAverage != nil) dict[@"loadAverage"] = _loadAverage ;
        
    
    
            if(_memory != nil) dict[@"memory"] = _memory ;
        
    
    
            if(_cpu != nil) dict[@"cpu"] = _cpu ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

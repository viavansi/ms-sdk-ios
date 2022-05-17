#import "SWGDate.h"
#import "MSSystemInfo.h"

@implementation MSSystemInfo

@synthesize loadAverage = _loadAverage;
@synthesize memory = _memory;
@synthesize cpu = _cpu;
@synthesize memoryLimit = _memoryLimit;
@synthesize cpuLimit = _cpuLimit;
@synthesize threadsCount = _threadsCount;
@synthesize tasksCount = _tasksCount;

-(id)loadAverage: (NSString*) loadAverage
    memory: (NSString*) memory
    cpu: (NSString*) cpu
    memoryLimit: (NSString*) memoryLimit
    cpuLimit: (NSString*) cpuLimit
    threadsCount: (NSNumber*) threadsCount
    tasksCount: (NSNumber*) tasksCount
    
{
    _loadAverage = loadAverage;
    _memory = memory;
    _cpu = cpu;
    _memoryLimit = memoryLimit;
    _cpuLimit = cpuLimit;
    _threadsCount = threadsCount;
    _tasksCount = tasksCount;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _loadAverage = dict[@"loadAverage"];
        
        _memory = dict[@"memory"];
        
        _cpu = dict[@"cpu"];
        
        _memoryLimit = dict[@"memoryLimit"];
        
        _cpuLimit = dict[@"cpuLimit"];
        
        _threadsCount = dict[@"threadsCount"];
        
        _tasksCount = dict[@"tasksCount"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_loadAverage != nil) dict[@"loadAverage"] = _loadAverage ;
        
    
    
            if(_memory != nil) dict[@"memory"] = _memory ;
        
    
    
            if(_cpu != nil) dict[@"cpu"] = _cpu ;
        
    
    
            if(_memoryLimit != nil) dict[@"memoryLimit"] = _memoryLimit ;
        
    
    
            if(_cpuLimit != nil) dict[@"cpuLimit"] = _cpuLimit ;
        
    
    
            if(_threadsCount != nil) dict[@"threadsCount"] = _threadsCount ;
        
    
    
            if(_tasksCount != nil) dict[@"tasksCount"] = _tasksCount ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

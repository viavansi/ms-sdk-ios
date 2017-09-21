#import "SWGDate.h"
#import "MSDataToSign.h"

@implementation MSDataToSign

@synthesize algorithm = _algorithm;
@synthesize hash = _hash;

-(id)algorithm: (NSString*) algorithm
    hash: (NSString*) hash
    
{
    _algorithm = algorithm;
    _hash = hash;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _algorithm = dict[@"algorithm"];
        
        _hash = dict[@"hash"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_algorithm != nil) dict[@"algorithm"] = _algorithm ;
        
    
    
            if(_hash != nil) dict[@"hash"] = _hash ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

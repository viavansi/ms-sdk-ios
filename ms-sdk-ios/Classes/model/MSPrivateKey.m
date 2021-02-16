#import "SWGDate.h"
#import "MSPrivateKey.h"

@implementation MSPrivateKey

@synthesize encoded = _encoded;
@synthesize algorithm = _algorithm;
@synthesize format = _format;
@synthesize destroyed = _destroyed;

-(id)encoded: (NSArray*) encoded
    algorithm: (NSString*) algorithm
    format: (NSString*) format
    destroyed: (NSNumber*) destroyed
    
{
    _encoded = encoded;
    _algorithm = algorithm;
    _format = format;
    _destroyed = destroyed;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _encoded = dict[@"encoded"];
        
        _algorithm = dict[@"algorithm"];
        
        _format = dict[@"format"];
        
        _destroyed = dict[@"destroyed"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_encoded != nil) dict[@"encoded"] = _encoded ;
        
    
    
            if(_algorithm != nil) dict[@"algorithm"] = _algorithm ;
        
    
    
            if(_format != nil) dict[@"format"] = _format ;
        
    
    
            if(_destroyed != nil) dict[@"destroyed"] = _destroyed ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

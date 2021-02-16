#import "SWGDate.h"
#import "MSPublicKey.h"

@implementation MSPublicKey

@synthesize encoded = _encoded;
@synthesize algorithm = _algorithm;
@synthesize format = _format;

-(id)encoded: (NSArray*) encoded
    algorithm: (NSString*) algorithm
    format: (NSString*) format
    
{
    _encoded = encoded;
    _algorithm = algorithm;
    _format = format;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _encoded = dict[@"encoded"];
        
        _algorithm = dict[@"algorithm"];
        
        _format = dict[@"format"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_encoded != nil) dict[@"encoded"] = _encoded ;
        
    
    
            if(_algorithm != nil) dict[@"algorithm"] = _algorithm ;
        
    
    
            if(_format != nil) dict[@"format"] = _format ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSX500Principal.h"

@implementation MSX500Principal

@synthesize name = _name;
@synthesize encoded = _encoded;

-(id)name: (NSString*) name
    encoded: (NSArray*) encoded
    
{
    _name = name;
    _encoded = encoded;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"];
        
        _encoded = dict[@"encoded"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_encoded != nil) dict[@"encoded"] = _encoded ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

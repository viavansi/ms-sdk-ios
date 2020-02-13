#import "SWGDate.h"
#import "MSParam.h"

@implementation MSParam

@synthesize key = _key;
@synthesize value = _value;
@synthesize internal = _internal;

-(id)key: (NSString*) key
    value: (NSString*) value
    internal: (NSNumber*) internal
    
{
    _key = key;
    _value = value;
    _internal = internal;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"];
        
        _value = dict[@"value"];
        
        _internal = dict[@"internal"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_value != nil) dict[@"value"] = _value ;
        
    
    
            if(_internal != nil) dict[@"internal"] = _internal ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

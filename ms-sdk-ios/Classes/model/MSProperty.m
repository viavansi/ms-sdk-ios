#import "SWGDate.h"
#import "MSProperty.h"

@implementation MSProperty

@synthesize key = _key;
@synthesize value = _value;
@synthesize admin = _admin;

-(id)key: (NSString*) key
    value: (NSString*) value
    admin: (NSNumber*) admin
    
{
    _key = key;
    _value = value;
    _admin = admin;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"];
        
        _value = dict[@"value"];
        
        _admin = dict[@"admin"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_value != nil) dict[@"value"] = _value ;
        
    
    
            if(_admin != nil) dict[@"admin"] = _admin ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

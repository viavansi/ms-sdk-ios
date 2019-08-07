#import "SWGDate.h"
#import "MSAuditoryMetadata.h"

@implementation MSAuditoryMetadata

@synthesize key = _key;
@synthesize label = _label;
@synthesize value = _value;

-(id)key: (NSString*) key
    label: (NSString*) label
    value: (NSString*) value
    
{
    _key = key;
    _label = label;
    _value = value;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"];
        
        _label = dict[@"label"];
        
        _value = dict[@"value"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_label != nil) dict[@"label"] = _label ;
        
    
    
            if(_value != nil) dict[@"value"] = _value ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

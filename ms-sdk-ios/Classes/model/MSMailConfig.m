#import "SWGDate.h"
#import "MSMailConfig.h"

@implementation MSMailConfig

-(id)required: (NSNumber*) required
    visible: (NSNumber*) visible
    default_value: (NSString*) default_value
    
{
    _required = required;
    _visible = visible;
    _default_value = default_value;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _required = dict[@"required"];
        
        _visible = dict[@"visible"];
        
        _default_value = dict[@"default_value"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_required != nil) dict[@"required"] = _required ;
        
    
    
            if(_visible != nil) dict[@"visible"] = _visible ;
        
    
    
            if(_default_value != nil) dict[@"default_value"] = _default_value ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

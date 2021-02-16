#import "SWGDate.h"
#import "MSAuditTrailLabelValueInfo.h"

@implementation MSAuditTrailLabelValueInfo

@synthesize label = _label;
@synthesize value = _value;
@synthesize type = _type;

-(id)label: (NSString*) label
    value: (NSString*) value
    type: (NSString*) type
    
{
    _label = label;
    _value = value;
    _type = type;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _label = dict[@"label"];
        
        _value = dict[@"value"];
        
        _type = dict[@"type"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_label != nil) dict[@"label"] = _label ;
        
    
    
            if(_value != nil) dict[@"value"] = _value ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSAuditTrailLabelValueInfo.h"

@implementation MSAuditTrailLabelValueInfo

@synthesize label = _label;
@synthesize value = _value;

-(id)label: (NSString*) label
    value: (NSString*) value
    
{
    _label = label;
    _value = value;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _label = dict[@"label"];
        
        _value = dict[@"value"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_label != nil) dict[@"label"] = _label ;
        
    
    
            if(_value != nil) dict[@"value"] = _value ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

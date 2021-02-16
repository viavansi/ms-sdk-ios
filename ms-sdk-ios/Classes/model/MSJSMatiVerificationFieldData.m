#import "SWGDate.h"
#import "MSJSMatiVerificationFieldData.h"

@implementation MSJSMatiVerificationFieldData

@synthesize value = _value;
@synthesize required = _required;
@synthesize label = _label;
@synthesize format = _format;

-(id)value: (NSString*) value
    required: (NSNumber*) required
    label: (NSString*) label
    format: (NSString*) format
    
{
    _value = value;
    _required = required;
    _label = label;
    _format = format;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _value = dict[@"value"];
        
        _required = dict[@"required"];
        
        _label = dict[@"label"];
        
        _format = dict[@"format"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_value != nil) dict[@"value"] = _value ;
        
    
    
            if(_required != nil) dict[@"required"] = _required ;
        
    
    
            if(_label != nil) dict[@"label"] = _label ;
        
    
    
            if(_format != nil) dict[@"format"] = _format ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

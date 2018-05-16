#import "SWGDate.h"
#import "MSImageProviderConfig.h"

@implementation MSImageProviderConfig

@synthesize providerId = _providerId;
@synthesize groupCode = _groupCode;
@synthesize value = _value;
@synthesize extension = _extension;

-(id)providerId: (NSString*) providerId
    groupCode: (NSString*) groupCode
    value: (NSString*) value
    extension: (NSString*) extension
    
{
    _providerId = providerId;
    _groupCode = groupCode;
    _value = value;
    _extension = extension;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _providerId = dict[@"providerId"];
        
        _groupCode = dict[@"groupCode"];
        
        _value = dict[@"value"];
        
        _extension = dict[@"extension"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_providerId != nil) dict[@"providerId"] = _providerId ;
        
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_value != nil) dict[@"value"] = _value ;
        
    
    
            if(_extension != nil) dict[@"extension"] = _extension ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

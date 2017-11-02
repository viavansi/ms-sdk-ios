#import "SWGDate.h"
#import "MSBase64.h"

@implementation MSBase64

-(id)base64: (NSString*) base64
    
{
    _base64 = base64;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _base64 = dict[@"base64"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_base64 != nil) dict[@"base64"] = _base64 ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

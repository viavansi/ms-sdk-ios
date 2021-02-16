#import "SWGDate.h"
#import "MSJSMatiAge.h"

@implementation MSJSMatiAge

@synthesize data = _data;

-(id)data: (NSString*) data
    
{
    _data = data;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _data = dict[@"data"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_data != nil) dict[@"data"] = _data ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

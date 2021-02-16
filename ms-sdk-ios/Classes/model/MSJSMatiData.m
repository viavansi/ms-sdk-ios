#import "SWGDate.h"
#import "MSJSMatiData.h"

@implementation MSJSMatiData

@synthesize nationalId = _nationalId;

-(id)nationalId: (NSNumber*) nationalId
    
{
    _nationalId = nationalId;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _nationalId = dict[@"nationalId"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_nationalId != nil) dict[@"nationalId"] = _nationalId ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

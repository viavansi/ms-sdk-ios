#import "SWGDate.h"
#import "MSNumber.h"

@implementation MSNumber


-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

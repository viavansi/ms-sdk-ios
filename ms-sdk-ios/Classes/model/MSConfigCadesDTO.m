#import "SWGDate.h"
#import "MSConfigCadesDTO.h"

@implementation MSConfigCadesDTO

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

#import "SWGDate.h"
#import "MSComposeToken.h"

@implementation MSComposeToken

@synthesize link = _link;

-(id)link: (NSString*) link
    
{
    _link = link;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _link = dict[@"link"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_link != nil) dict[@"link"] = _link ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

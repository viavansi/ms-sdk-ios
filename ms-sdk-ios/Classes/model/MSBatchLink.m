#import "SWGDate.h"
#import "MSBatchLink.h"

@implementation MSBatchLink

@synthesize code = _code;
@synthesize link = _link;

-(id)code: (NSString*) code
    link: (NSString*) link
    
{
    _code = code;
    _link = link;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _link = dict[@"link"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_link != nil) dict[@"link"] = _link ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

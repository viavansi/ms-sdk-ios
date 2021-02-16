#import "SWGDate.h"
#import "MSRecipientLink.h"

@implementation MSRecipientLink

@synthesize key = _key;
@synthesize link = _link;

-(id)key: (NSString*) key
    link: (NSString*) link
    
{
    _key = key;
    _link = link;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"];
        
        _link = dict[@"link"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_link != nil) dict[@"link"] = _link ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSSignPageLocalizables.h"

@implementation MSSignPageLocalizables

@synthesize translations = _translations;

-(id)translations: (NSDictionary*) translations
    
{
    _translations = translations;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _translations = dict[@"translations"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_translations != nil) dict[@"translations"] = _translations ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

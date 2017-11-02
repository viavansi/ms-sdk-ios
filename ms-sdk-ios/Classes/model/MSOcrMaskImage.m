#import "SWGDate.h"
#import "MSOcrMaskImage.h"

@implementation MSOcrMaskImage

-(id)mask: (NSString*) mask
    version: (NSNumber*) version
    
{
    _mask = mask;
    _version = version;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _mask = dict[@"mask"];
        
        _version = dict[@"version"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_mask != nil) dict[@"mask"] = _mask ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

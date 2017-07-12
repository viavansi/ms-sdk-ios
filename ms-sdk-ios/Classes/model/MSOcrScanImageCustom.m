#import "SWGDate.h"
#import "MSOcrScanImageCustom.h"

@implementation MSOcrScanImageCustom

-(id)key: (NSString*) key
    base64Image: (NSString*) base64Image
    
{
    _key = key;
    _base64Image = base64Image;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"];
        
        _base64Image = dict[@"base64Image"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_base64Image != nil) dict[@"base64Image"] = _base64Image ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

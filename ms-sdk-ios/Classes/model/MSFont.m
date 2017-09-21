#import "SWGDate.h"
#import "MSFont.h"

@implementation MSFont

@synthesize name = _name;
@synthesize size = _size;

-(id)name: (NSString*) name
    size: (NSNumber*) size
    
{
    _name = name;
    _size = size;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"];
        
        _size = dict[@"size"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_size != nil) dict[@"size"] = _size ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

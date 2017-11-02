#import "SWGDate.h"
#import "MSRectangle.h"

@implementation MSRectangle

@synthesize x = _x;
@synthesize y = _y;
@synthesize width = _width;
@synthesize height = _height;

-(id)x: (NSNumber*) x
    y: (NSNumber*) y
    width: (NSNumber*) width
    height: (NSNumber*) height
    
{
    _x = x;
    _y = y;
    _width = width;
    _height = height;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _x = dict[@"x"];
        
        _y = dict[@"y"];
        
        _width = dict[@"width"];
        
        _height = dict[@"height"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_x != nil) dict[@"x"] = _x ;
        
    
    
            if(_y != nil) dict[@"y"] = _y ;
        
    
    
            if(_width != nil) dict[@"width"] = _width ;
        
    
    
            if(_height != nil) dict[@"height"] = _height ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSXMLPositionDTO.h"

@implementation MSXMLPositionDTO

@synthesize page = _page;
@synthesize x = _x;
@synthesize y = _y;
@synthesize width = _width;
@synthesize height = _height;

-(id)page: (NSNumber*) page
    x: (NSNumber*) x
    y: (NSNumber*) y
    width: (NSNumber*) width
    height: (NSNumber*) height
    
{
    _page = page;
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
        _page = dict[@"page"];
        
        _x = dict[@"x"];
        
        _y = dict[@"y"];
        
        _width = dict[@"width"];
        
        _height = dict[@"height"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_page != nil) dict[@"page"] = _page ;
        
    
    
            if(_x != nil) dict[@"x"] = _x ;
        
    
    
            if(_y != nil) dict[@"y"] = _y ;
        
    
    
            if(_width != nil) dict[@"width"] = _width ;
        
    
    
            if(_height != nil) dict[@"height"] = _height ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

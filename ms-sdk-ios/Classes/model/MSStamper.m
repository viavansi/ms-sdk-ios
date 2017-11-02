#import "SWGDate.h"
#import "MSStamper.h"

@implementation MSStamper

-(id)type: (NSString*) type
    rotation: (NSString*) rotation
    width: (NSNumber*) width
    height: (NSNumber*) height
    xAxis: (NSNumber*) xAxis
    yAxis: (NSNumber*) yAxis
    page: (NSNumber*) page
    imageBase64: (NSString*) imageBase64
    positionsKey: (NSString*) positionsKey
    
{
    _type = type;
    _rotation = rotation;
    _width = width;
    _height = height;
    _xAxis = xAxis;
    _yAxis = yAxis;
    _page = page;
    _imageBase64 = imageBase64;
    _positionsKey = positionsKey;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _rotation = dict[@"rotation"];
        
        _width = dict[@"width"];
        
        _height = dict[@"height"];
        
        _xAxis = dict[@"xAxis"];
        
        _yAxis = dict[@"yAxis"];
        
        _page = dict[@"page"];
        
        _imageBase64 = dict[@"imageBase64"];
        
        _positionsKey = dict[@"positionsKey"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_rotation != nil) dict[@"rotation"] = _rotation ;
        
    
    
            if(_width != nil) dict[@"width"] = _width ;
        
    
    
            if(_height != nil) dict[@"height"] = _height ;
        
    
    
            if(_xAxis != nil) dict[@"xAxis"] = _xAxis ;
        
    
    
            if(_yAxis != nil) dict[@"yAxis"] = _yAxis ;
        
    
    
            if(_page != nil) dict[@"page"] = _page ;
        
    
    
            if(_imageBase64 != nil) dict[@"imageBase64"] = _imageBase64 ;
        
    
    
            if(_positionsKey != nil) dict[@"positionsKey"] = _positionsKey ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

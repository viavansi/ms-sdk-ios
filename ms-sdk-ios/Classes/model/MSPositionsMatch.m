#import "SWGDate.h"
#import "MSPositionsMatch.h"

@implementation MSPositionsMatch

@synthesize _id = __id;
@synthesize text = _text;
@synthesize xoffset = _xoffset;
@synthesize yoffset = _yoffset;
@synthesize width = _width;
@synthesize height = _height;
@synthesize forEvidence = _forEvidence;

-(id)_id: (NSString*) _id
    text: (NSString*) text
    xoffset: (NSNumber*) xoffset
    yoffset: (NSNumber*) yoffset
    width: (NSNumber*) width
    height: (NSNumber*) height
    forEvidence: (NSNumber*) forEvidence
    
{
    __id = _id;
    _text = text;
    _xoffset = xoffset;
    _yoffset = yoffset;
    _width = width;
    _height = height;
    _forEvidence = forEvidence;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"];
        
        _text = dict[@"text"];
        
        _xoffset = dict[@"xoffset"];
        
        _yoffset = dict[@"yoffset"];
        
        _width = dict[@"width"];
        
        _height = dict[@"height"];
        
        _forEvidence = dict[@"forEvidence"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
            if(_text != nil) dict[@"text"] = _text ;
        
    
    
            if(_xoffset != nil) dict[@"xoffset"] = _xoffset ;
        
    
    
            if(_yoffset != nil) dict[@"yoffset"] = _yoffset ;
        
    
    
            if(_width != nil) dict[@"width"] = _width ;
        
    
    
            if(_height != nil) dict[@"height"] = _height ;
        
    
    
            if(_forEvidence != nil) dict[@"forEvidence"] = _forEvidence ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

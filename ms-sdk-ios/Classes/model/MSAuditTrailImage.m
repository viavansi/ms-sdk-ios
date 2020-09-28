#import "SWGDate.h"
#import "MSAuditTrailImage.h"

@implementation MSAuditTrailImage

@synthesize relativePath = _relativePath;
@synthesize code = _code;
@synthesize base64Content = _base64Content;
@synthesize height = _height;
@synthesize width = _width;
@synthesize imageFormat = _imageFormat;

-(id)relativePath: (NSString*) relativePath
    code: (NSString*) code
    base64Content: (NSString*) base64Content
    height: (NSNumber*) height
    width: (NSNumber*) width
    imageFormat: (NSString*) imageFormat
    
{
    _relativePath = relativePath;
    _code = code;
    _base64Content = base64Content;
    _height = height;
    _width = width;
    _imageFormat = imageFormat;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _relativePath = dict[@"relativePath"];
        
        _code = dict[@"code"];
        
        _base64Content = dict[@"base64Content"];
        
        _height = dict[@"height"];
        
        _width = dict[@"width"];
        
        _imageFormat = dict[@"imageFormat"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_relativePath != nil) dict[@"relativePath"] = _relativePath ;
        
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_base64Content != nil) dict[@"base64Content"] = _base64Content ;
        
    
    
            if(_height != nil) dict[@"height"] = _height ;
        
    
    
            if(_width != nil) dict[@"width"] = _width ;
        
    
    
            if(_imageFormat != nil) dict[@"imageFormat"] = _imageFormat ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

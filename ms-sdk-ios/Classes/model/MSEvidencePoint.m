#import "SWGDate.h"
#import "MSEvidencePoint.h"

@implementation MSEvidencePoint

@synthesize x = _x;
@synthesize y = _y;
@synthesize pressure = _pressure;
@synthesize milliseconds = _milliseconds;
@synthesize penElevation = _penElevation;
@synthesize penRotation = _penRotation;
@synthesize penAzimuth = _penAzimuth;
@synthesize s = _s;

-(id)x: (NSNumber*) x
    y: (NSNumber*) y
    pressure: (NSNumber*) pressure
    milliseconds: (NSNumber*) milliseconds
    penElevation: (NSNumber*) penElevation
    penRotation: (NSNumber*) penRotation
    penAzimuth: (NSNumber*) penAzimuth
    s: (NSNumber*) s
    
{
    _x = x;
    _y = y;
    _pressure = pressure;
    _milliseconds = milliseconds;
    _penElevation = penElevation;
    _penRotation = penRotation;
    _penAzimuth = penAzimuth;
    _s = s;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _x = dict[@"x"];
        
        _y = dict[@"y"];
        
        _pressure = dict[@"pressure"];
        
        _milliseconds = dict[@"milliseconds"];
        
        _penElevation = dict[@"penElevation"];
        
        _penRotation = dict[@"penRotation"];
        
        _penAzimuth = dict[@"penAzimuth"];
        
        _s = dict[@"s"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_x != nil) dict[@"x"] = _x ;
        
    
    
            if(_y != nil) dict[@"y"] = _y ;
        
    
    
            if(_pressure != nil) dict[@"pressure"] = _pressure ;
        
    
    
            if(_milliseconds != nil) dict[@"milliseconds"] = _milliseconds ;
        
    
    
            if(_penElevation != nil) dict[@"penElevation"] = _penElevation ;
        
    
    
            if(_penRotation != nil) dict[@"penRotation"] = _penRotation ;
        
    
    
            if(_penAzimuth != nil) dict[@"penAzimuth"] = _penAzimuth ;
        
    
    
            if(_s != nil) dict[@"s"] = _s ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

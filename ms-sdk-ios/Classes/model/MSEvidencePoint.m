#import "SWGDate.h"
#import "MSEvidencePoint.h"

@implementation MSEvidencePoint

-(id)x: (NSNumber*) x
    y: (NSNumber*) y
    pressure: (NSNumber*) pressure
    milliseconds: (NSNumber*) milliseconds
    
{
    _x = x;
    _y = y;
    _pressure = pressure;
    _milliseconds = milliseconds;
    

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
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_x != nil) dict[@"x"] = _x ;
        
    
    
            if(_y != nil) dict[@"y"] = _y ;
        
    
    
            if(_pressure != nil) dict[@"pressure"] = _pressure ;
        
    
    
            if(_milliseconds != nil) dict[@"milliseconds"] = _milliseconds ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

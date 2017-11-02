#import "SWGDate.h"
#import "MSGeolocation.h"

@implementation MSGeolocation

@synthesize accuracy = _accuracy;
@synthesize latitude = _latitude;
@synthesize longitude = _longitude;
@synthesize locationData = _locationData;
@synthesize locationInfo = _locationInfo;

-(id)accuracy: (NSNumber*) accuracy
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    locationData: (NSString*) locationData
    locationInfo: (NSString*) locationInfo
    
{
    _accuracy = accuracy;
    _latitude = latitude;
    _longitude = longitude;
    _locationData = locationData;
    _locationInfo = locationInfo;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _accuracy = dict[@"accuracy"];
        
        _latitude = dict[@"latitude"];
        
        _longitude = dict[@"longitude"];
        
        _locationData = dict[@"locationData"];
        
        _locationInfo = dict[@"locationInfo"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_accuracy != nil) dict[@"accuracy"] = _accuracy ;
        
    
    
            if(_latitude != nil) dict[@"latitude"] = _latitude ;
        
    
    
            if(_longitude != nil) dict[@"longitude"] = _longitude ;
        
    
    
            if(_locationData != nil) dict[@"locationData"] = _locationData ;
        
    
    
            if(_locationInfo != nil) dict[@"locationInfo"] = _locationInfo ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSXMLDeviceDTO.h"

@implementation MSXMLDeviceDTO

@synthesize app = _app;
@synthesize manufacturer = _manufacturer;
@synthesize model = _model;
@synthesize osVersion = _osVersion;
@synthesize ip = _ip;

-(id)app: (NSString*) app
    manufacturer: (NSString*) manufacturer
    model: (NSString*) model
    osVersion: (NSString*) osVersion
    ip: (NSString*) ip
    
{
    _app = app;
    _manufacturer = manufacturer;
    _model = model;
    _osVersion = osVersion;
    _ip = ip;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _app = dict[@"app"];
        
        _manufacturer = dict[@"manufacturer"];
        
        _model = dict[@"model"];
        
        _osVersion = dict[@"osVersion"];
        
        _ip = dict[@"ip"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_app != nil) dict[@"app"] = _app ;
        
    
    
            if(_manufacturer != nil) dict[@"manufacturer"] = _manufacturer ;
        
    
    
            if(_model != nil) dict[@"model"] = _model ;
        
    
    
            if(_osVersion != nil) dict[@"osVersion"] = _osVersion ;
        
    
    
            if(_ip != nil) dict[@"ip"] = _ip ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

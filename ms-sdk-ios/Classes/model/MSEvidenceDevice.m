#import "SWGDate.h"
#import "MSEvidenceDevice.h"

@implementation MSEvidenceDevice

@synthesize manufacturer = _manufacturer;
@synthesize model = _model;
@synthesize osVersion = _osVersion;
@synthesize penType = _penType;
@synthesize maxPressure = _maxPressure;
@synthesize minPressure = _minPressure;
@synthesize ppi = _ppi;
@synthesize rotationAllowed = _rotationAllowed;
@synthesize screenHeight = _screenHeight;
@synthesize screenWidth = _screenWidth;
@synthesize app = _app;
@synthesize ip = _ip;

-(id)manufacturer: (NSString*) manufacturer
    model: (NSString*) model
    osVersion: (NSString*) osVersion
    penType: (NSString*) penType
    maxPressure: (NSNumber*) maxPressure
    minPressure: (NSNumber*) minPressure
    ppi: (NSString*) ppi
    rotationAllowed: (NSNumber*) rotationAllowed
    screenHeight: (NSNumber*) screenHeight
    screenWidth: (NSNumber*) screenWidth
    app: (NSString*) app
    ip: (NSString*) ip
    
{
    _manufacturer = manufacturer;
    _model = model;
    _osVersion = osVersion;
    _penType = penType;
    _maxPressure = maxPressure;
    _minPressure = minPressure;
    _ppi = ppi;
    _rotationAllowed = rotationAllowed;
    _screenHeight = screenHeight;
    _screenWidth = screenWidth;
    _app = app;
    _ip = ip;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _manufacturer = dict[@"manufacturer"];
        
        _model = dict[@"model"];
        
        _osVersion = dict[@"osVersion"];
        
        _penType = dict[@"penType"];
        
        _maxPressure = dict[@"maxPressure"];
        
        _minPressure = dict[@"minPressure"];
        
        _ppi = dict[@"ppi"];
        
        _rotationAllowed = dict[@"rotationAllowed"];
        
        _screenHeight = dict[@"screenHeight"];
        
        _screenWidth = dict[@"screenWidth"];
        
        _app = dict[@"app"];
        
        _ip = dict[@"ip"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_manufacturer != nil) dict[@"manufacturer"] = _manufacturer ;
        
    
    
            if(_model != nil) dict[@"model"] = _model ;
        
    
    
            if(_osVersion != nil) dict[@"osVersion"] = _osVersion ;
        
    
    
            if(_penType != nil) dict[@"penType"] = _penType ;
        
    
    
            if(_maxPressure != nil) dict[@"maxPressure"] = _maxPressure ;
        
    
    
            if(_minPressure != nil) dict[@"minPressure"] = _minPressure ;
        
    
    
            if(_ppi != nil) dict[@"ppi"] = _ppi ;
        
    
    
            if(_rotationAllowed != nil) dict[@"rotationAllowed"] = _rotationAllowed ;
        
    
    
            if(_screenHeight != nil) dict[@"screenHeight"] = _screenHeight ;
        
    
    
            if(_screenWidth != nil) dict[@"screenWidth"] = _screenWidth ;
        
    
    
            if(_app != nil) dict[@"app"] = _app ;
        
    
    
            if(_ip != nil) dict[@"ip"] = _ip ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

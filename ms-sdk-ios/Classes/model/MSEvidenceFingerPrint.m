#import "SWGDate.h"
#import "MSEvidenceFingerPrint.h"

@implementation MSEvidenceFingerPrint

@synthesize messageCode = _messageCode;
@synthesize evidenceCode = _evidenceCode;
@synthesize base64Image = _base64Image;
@synthesize base64Template = _base64Template;
@synthesize templateAlgorithmic = _templateAlgorithmic;
@synthesize fingerID = _fingerID;
@synthesize geolocation = _geolocation;
@synthesize device = _device;
@synthesize positions = _positions;
@synthesize imageQuality = _imageQuality;
@synthesize imageScaleFactor = _imageScaleFactor;

-(id)messageCode: (NSString*) messageCode
    evidenceCode: (NSString*) evidenceCode
    base64Image: (NSString*) base64Image
    base64Template: (NSString*) base64Template
    templateAlgorithmic: (NSString*) templateAlgorithmic
    fingerID: (NSString*) fingerID
    geolocation: (MSGeolocation*) geolocation
    device: (MSEvidenceDevice*) device
    positions: (NSArray*) positions
    imageQuality: (NSNumber*) imageQuality
    imageScaleFactor: (NSNumber*) imageScaleFactor
    
{
    _messageCode = messageCode;
    _evidenceCode = evidenceCode;
    _base64Image = base64Image;
    _base64Template = base64Template;
    _templateAlgorithmic = templateAlgorithmic;
    _fingerID = fingerID;
    _geolocation = geolocation;
    _device = device;
    _positions = positions;
    _imageQuality = imageQuality;
    _imageScaleFactor = imageScaleFactor;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        _evidenceCode = dict[@"evidenceCode"];
        
        _base64Image = dict[@"base64Image"];
        
        _base64Template = dict[@"base64Template"];
        
        _templateAlgorithmic = dict[@"templateAlgorithmic"];
        
        _fingerID = dict[@"fingerID"];
        
        
        
        id geolocation_dict = dict[@"geolocation"];
        
        if(geolocation_dict != nil)
            _geolocation = [[MSGeolocation  alloc]initWithValues:geolocation_dict];
        
        
        
        
        id device_dict = dict[@"device"];
        
        if(device_dict != nil)
            _device = [[MSEvidenceDevice  alloc]initWithValues:device_dict];
        
        
        
        
        id positions_dict = dict[@"positions"];
        
        if([positions_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)positions_dict count]];
            if([(NSArray*)positions_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)positions_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[positions_dict objectAtIndex:i]];
                    MSPosition* d = [[MSPosition alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _positions = [[NSArray alloc] initWithArray:objs];
            }
            else
                _positions = [[NSArray alloc] init];
        }
        else {
            _positions = [[NSArray alloc] init];
        }
        
        
        _imageQuality = dict[@"imageQuality"];
        
        _imageScaleFactor = dict[@"imageScaleFactor"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_evidenceCode != nil) dict[@"evidenceCode"] = _evidenceCode ;
        
    
    
            if(_base64Image != nil) dict[@"base64Image"] = _base64Image ;
        
    
    
            if(_base64Template != nil) dict[@"base64Template"] = _base64Template ;
        
    
    
            if(_templateAlgorithmic != nil) dict[@"templateAlgorithmic"] = _templateAlgorithmic ;
        
    
    
            if(_fingerID != nil) dict[@"fingerID"] = _fingerID ;
        
    
    
    if(_geolocation != nil){
        if([_geolocation isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_geolocation count] ; i++ ) {
				MSGeolocation *geolocation = [[MSGeolocation alloc]init];
				geolocation = [(NSArray*)_geolocation objectAtIndex:i];
                [array addObject:[(SWGObject*)geolocation asDictionary]];
            }
            dict[@"geolocation"] = array;
        }
        else if(_geolocation && [_geolocation isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_geolocation toString];
            if(dateString){
                dict[@"geolocation"] = dateString;
            }
        }
        else {
        
            if(_geolocation != nil) dict[@"geolocation"] = [(SWGObject*)_geolocation asDictionary];
        
        }
    }
    
    
    
    if(_device != nil){
        if([_device isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_device count] ; i++ ) {
				MSEvidenceDevice *device = [[MSEvidenceDevice alloc]init];
				device = [(NSArray*)_device objectAtIndex:i];
                [array addObject:[(SWGObject*)device asDictionary]];
            }
            dict[@"device"] = array;
        }
        else if(_device && [_device isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_device toString];
            if(dateString){
                dict[@"device"] = dateString;
            }
        }
        else {
        
            if(_device != nil) dict[@"device"] = [(SWGObject*)_device asDictionary];
        
        }
    }
    
    
    
    if(_positions != nil){
        if([_positions isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_positions count] ; i++ ) {
				MSPosition *positions = [[MSPosition alloc]init];
				positions = [(NSArray*)_positions objectAtIndex:i];
                [array addObject:[(SWGObject*)positions asDictionary]];
            }
            dict[@"positions"] = array;
        }
        else if(_positions && [_positions isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_positions toString];
            if(dateString){
                dict[@"positions"] = dateString;
            }
        }
        else {
        
            if(_positions != nil) dict[@"positions"] = [(SWGObject*)_positions asDictionary];
        
        }
    }
    
    
    
            if(_imageQuality != nil) dict[@"imageQuality"] = _imageQuality ;
        
    
    
            if(_imageScaleFactor != nil) dict[@"imageScaleFactor"] = _imageScaleFactor ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

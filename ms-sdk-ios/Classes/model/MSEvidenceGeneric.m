#import "SWGDate.h"
#import "MSEvidenceGeneric.h"

@implementation MSEvidenceGeneric

-(id)messageCode: (NSString*) messageCode
    evidenceCode: (NSString*) evidenceCode
    geolocation: (MSGeolocation*) geolocation
    device: (MSEvidenceDevice*) device
    positions: (NSArray*) positions
    properties: (NSArray*) properties
    base64Image: (NSString*) base64Image
    providerId: (NSString*) providerId
    evidenceDescription: (NSString*) evidenceDescription
    imageQuality: (NSNumber*) imageQuality
    imageScaleFactor: (NSNumber*) imageScaleFactor
    
{
    _messageCode = messageCode;
    _evidenceCode = evidenceCode;
    _geolocation = geolocation;
    _device = device;
    _positions = positions;
    _properties = properties;
    _base64Image = base64Image;
    _providerId = providerId;
    _evidenceDescription = evidenceDescription;
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
        
        
        
        
        id properties_dict = dict[@"properties"];
        
        if([properties_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)properties_dict count]];
            if([(NSArray*)properties_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)properties_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[properties_dict objectAtIndex:i]];
                    MSParam* d = [[MSParam alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _properties = [[NSArray alloc] initWithArray:objs];
            }
            else
                _properties = [[NSArray alloc] init];
        }
        else {
            _properties = [[NSArray alloc] init];
        }
        
        
        _base64Image = dict[@"base64Image"];
        
        _providerId = dict[@"providerId"];
        
        _evidenceDescription = dict[@"evidenceDescription"];
        
        _imageQuality = dict[@"imageQuality"];
        
        _imageScaleFactor = dict[@"imageScaleFactor"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_evidenceCode != nil) dict[@"evidenceCode"] = _evidenceCode ;
        
    
    
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
    
    
    
    if(_properties != nil){
        if([_properties isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_properties count] ; i++ ) {
				MSParam *properties = [[MSParam alloc]init];
				properties = [(NSArray*)_properties objectAtIndex:i];            
                [array addObject:[(SWGObject*)properties asDictionary]];
            }
            dict[@"properties"] = array;
        }
        else if(_properties && [_properties isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_properties toString];
            if(dateString){
                dict[@"properties"] = dateString;
            }
        }
        else {
        
            if(_properties != nil) dict[@"properties"] = [(SWGObject*)_properties asDictionary];
        
        }
    }
    
    
    
            if(_base64Image != nil) dict[@"base64Image"] = _base64Image ;
        
    
    
            if(_providerId != nil) dict[@"providerId"] = _providerId ;
        
    
    
            if(_evidenceDescription != nil) dict[@"evidenceDescription"] = _evidenceDescription ;
        
    
    
            if(_imageQuality != nil) dict[@"imageQuality"] = _imageQuality ;
        
    
    
            if(_imageScaleFactor != nil) dict[@"imageScaleFactor"] = _imageScaleFactor ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

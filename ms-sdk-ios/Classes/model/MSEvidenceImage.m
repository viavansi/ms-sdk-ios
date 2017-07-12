#import "SWGDate.h"
#import "MSEvidenceImage.h"

@implementation MSEvidenceImage

-(id)messageCode: (NSString*) messageCode
    evidenceCode: (NSString*) evidenceCode
    base64Image: (NSString*) base64Image
    ocrTemplate: (NSString*) ocrTemplate
    ocrFieldExtractionResult: (NSArray*) ocrFieldExtractionResult
    geolocation: (MSGeolocation*) geolocation
    device: (MSEvidenceDevice*) device
    positions: (NSArray*) positions
    imageQuality: (NSNumber*) imageQuality
    imageScaleFactor: (NSNumber*) imageScaleFactor
    
{
    _messageCode = messageCode;
    _evidenceCode = evidenceCode;
    _base64Image = base64Image;
    _ocrTemplate = ocrTemplate;
    _ocrFieldExtractionResult = ocrFieldExtractionResult;
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
        
        _ocrTemplate = dict[@"ocrTemplate"];
        
        
        
        id ocrFieldExtractionResult_dict = dict[@"ocrFieldExtractionResult"];
        
        if([ocrFieldExtractionResult_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)ocrFieldExtractionResult_dict count]];
            if([(NSArray*)ocrFieldExtractionResult_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)ocrFieldExtractionResult_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[ocrFieldExtractionResult_dict objectAtIndex:i]];
                    MSJSOcrFieldExtractionResult* d = [[MSJSOcrFieldExtractionResult alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _ocrFieldExtractionResult = [[NSArray alloc] initWithArray:objs];
            }
            else
                _ocrFieldExtractionResult = [[NSArray alloc] init];
        }
        else {
            _ocrFieldExtractionResult = [[NSArray alloc] init];
        }
        
        
        
        
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
        
    
    
            if(_ocrTemplate != nil) dict[@"ocrTemplate"] = _ocrTemplate ;
        
    
    
    if(_ocrFieldExtractionResult != nil){
        if([_ocrFieldExtractionResult isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_ocrFieldExtractionResult count] ; i++ ) {
				MSJSOcrFieldExtractionResult *ocrFieldExtractionResult = [[MSJSOcrFieldExtractionResult alloc]init];
				ocrFieldExtractionResult = [(NSArray*)_ocrFieldExtractionResult objectAtIndex:i];            
                [array addObject:[(SWGObject*)ocrFieldExtractionResult asDictionary]];
            }
            dict[@"ocrFieldExtractionResult"] = array;
        }
        else if(_ocrFieldExtractionResult && [_ocrFieldExtractionResult isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_ocrFieldExtractionResult toString];
            if(dateString){
                dict[@"ocrFieldExtractionResult"] = dateString;
            }
        }
        else {
        
            if(_ocrFieldExtractionResult != nil) dict[@"ocrFieldExtractionResult"] = [(SWGObject*)_ocrFieldExtractionResult asDictionary];
        
        }
    }
    
    
    
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

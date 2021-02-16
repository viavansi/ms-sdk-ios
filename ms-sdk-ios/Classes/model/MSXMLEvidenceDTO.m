#import "SWGDate.h"
#import "MSXMLEvidenceDTO.h"

@implementation MSXMLEvidenceDTO

@synthesize locationData = _locationData;
@synthesize locationInfo = _locationInfo;
@synthesize longitude = _longitude;
@synthesize latitude = _latitude;
@synthesize pressureMaxValue = _pressureMaxValue;
@synthesize pressureMinValue = _pressureMinValue;
@synthesize pressureStylusInfo = _pressureStylusInfo;
@synthesize deviceInfo = _deviceInfo;
@synthesize position = _position;
@synthesize positions = _positions;
@synthesize hashImage = _hashImage;
@synthesize hashPdf = _hashPdf;
@synthesize cipherAlgorithm = _cipherAlgorithm;
@synthesize encryptedAesSessionKey = _encryptedAesSessionKey;
@synthesize trustedThirdParty = _trustedThirdParty;
@synthesize genericEvidence = _genericEvidence;
@synthesize cipheredData = _cipheredData;
@synthesize evidenceType = _evidenceType;
@synthesize evidenceVersion = _evidenceVersion;
@synthesize evidenceTimestamp = _evidenceTimestamp;
@synthesize clientTimestamp = _clientTimestamp;
@synthesize serviceTimestamp = _serviceTimestamp;
@synthesize serviceTimestampType = _serviceTimestampType;

-(id)locationData: (NSString*) locationData
    locationInfo: (NSString*) locationInfo
    longitude: (NSString*) longitude
    latitude: (NSString*) latitude
    pressureMaxValue: (NSString*) pressureMaxValue
    pressureMinValue: (NSString*) pressureMinValue
    pressureStylusInfo: (NSString*) pressureStylusInfo
    deviceInfo: (MSXMLDeviceDTO*) deviceInfo
    position: (MSXMLPositionDTO*) position
    positions: (NSArray*) positions
    hashImage: (NSString*) hashImage
    hashPdf: (MSXMLPdfPageHashes*) hashPdf
    cipherAlgorithm: (NSString*) cipherAlgorithm
    encryptedAesSessionKey: (NSString*) encryptedAesSessionKey
    trustedThirdParty: (NSString*) trustedThirdParty
    genericEvidence: (MSXMLGenericEvidenceDTO*) genericEvidence
    cipheredData: (NSString*) cipheredData
    evidenceType: (NSString*) evidenceType
    evidenceVersion: (NSString*) evidenceVersion
    evidenceTimestamp: (NSNumber*) evidenceTimestamp
    clientTimestamp: (NSNumber*) clientTimestamp
    serviceTimestamp: (NSNumber*) serviceTimestamp
    serviceTimestampType: (NSString*) serviceTimestampType
    
{
    _locationData = locationData;
    _locationInfo = locationInfo;
    _longitude = longitude;
    _latitude = latitude;
    _pressureMaxValue = pressureMaxValue;
    _pressureMinValue = pressureMinValue;
    _pressureStylusInfo = pressureStylusInfo;
    _deviceInfo = deviceInfo;
    _position = position;
    _positions = positions;
    _hashImage = hashImage;
    _hashPdf = hashPdf;
    _cipherAlgorithm = cipherAlgorithm;
    _encryptedAesSessionKey = encryptedAesSessionKey;
    _trustedThirdParty = trustedThirdParty;
    _genericEvidence = genericEvidence;
    _cipheredData = cipheredData;
    _evidenceType = evidenceType;
    _evidenceVersion = evidenceVersion;
    _evidenceTimestamp = evidenceTimestamp;
    _clientTimestamp = clientTimestamp;
    _serviceTimestamp = serviceTimestamp;
    _serviceTimestampType = serviceTimestampType;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _locationData = dict[@"locationData"];
        
        _locationInfo = dict[@"locationInfo"];
        
        _longitude = dict[@"longitude"];
        
        _latitude = dict[@"latitude"];
        
        _pressureMaxValue = dict[@"pressureMaxValue"];
        
        _pressureMinValue = dict[@"pressureMinValue"];
        
        _pressureStylusInfo = dict[@"pressureStylusInfo"];
        
        
        
        id deviceInfo_dict = dict[@"deviceInfo"];
        
        if(deviceInfo_dict != nil)
            _deviceInfo = [[MSXMLDeviceDTO  alloc]initWithValues:deviceInfo_dict];
        
        
        
        
        id position_dict = dict[@"position"];
        
        if(position_dict != nil)
            _position = [[MSXMLPositionDTO  alloc]initWithValues:position_dict];
        
        
        
        
        id positions_dict = dict[@"positions"];
        
        if([positions_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)positions_dict count]];
            if([(NSArray*)positions_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)positions_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[positions_dict objectAtIndex:i]];
                    MSXMLPositionDTO* d = [[MSXMLPositionDTO alloc] initWithValues:dict];
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
        
        
        _hashImage = dict[@"hashImage"];
        
        
        
        id hashPdf_dict = dict[@"hashPdf"];
        
        if(hashPdf_dict != nil)
            _hashPdf = [[MSXMLPdfPageHashes  alloc]initWithValues:hashPdf_dict];
        
        
        _cipherAlgorithm = dict[@"cipherAlgorithm"];
        
        _encryptedAesSessionKey = dict[@"encryptedAesSessionKey"];
        
        _trustedThirdParty = dict[@"trustedThirdParty"];
        
        
        
        id genericEvidence_dict = dict[@"genericEvidence"];
        
        if(genericEvidence_dict != nil)
            _genericEvidence = [[MSXMLGenericEvidenceDTO  alloc]initWithValues:genericEvidence_dict];
        
        
        _cipheredData = dict[@"cipheredData"];
        
        _evidenceType = dict[@"evidenceType"];
        
        _evidenceVersion = dict[@"evidenceVersion"];
        
        _evidenceTimestamp = dict[@"evidenceTimestamp"];
        
        _clientTimestamp = dict[@"clientTimestamp"];
        
        _serviceTimestamp = dict[@"serviceTimestamp"];
        
        _serviceTimestampType = dict[@"serviceTimestampType"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_locationData != nil) dict[@"locationData"] = _locationData ;
        
    
    
            if(_locationInfo != nil) dict[@"locationInfo"] = _locationInfo ;
        
    
    
            if(_longitude != nil) dict[@"longitude"] = _longitude ;
        
    
    
            if(_latitude != nil) dict[@"latitude"] = _latitude ;
        
    
    
            if(_pressureMaxValue != nil) dict[@"pressureMaxValue"] = _pressureMaxValue ;
        
    
    
            if(_pressureMinValue != nil) dict[@"pressureMinValue"] = _pressureMinValue ;
        
    
    
            if(_pressureStylusInfo != nil) dict[@"pressureStylusInfo"] = _pressureStylusInfo ;
        
    
    
    if(_deviceInfo != nil){
        if([_deviceInfo isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_deviceInfo count] ; i++ ) {
				MSXMLDeviceDTO *deviceInfo = [[MSXMLDeviceDTO alloc]init];
				deviceInfo = [(NSArray*)_deviceInfo objectAtIndex:i];
                [array addObject:[(SWGObject*)deviceInfo asDictionary]];
            }
            dict[@"deviceInfo"] = array;
        }
        else if(_deviceInfo && [_deviceInfo isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_deviceInfo toString];
            if(dateString){
                dict[@"deviceInfo"] = dateString;
            }
        }
        else {
        
            if(_deviceInfo != nil) dict[@"deviceInfo"] = [(SWGObject*)_deviceInfo asDictionary];
        
        }
    }
    
    
    
    if(_position != nil){
        if([_position isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_position count] ; i++ ) {
				MSXMLPositionDTO *position = [[MSXMLPositionDTO alloc]init];
				position = [(NSArray*)_position objectAtIndex:i];
                [array addObject:[(SWGObject*)position asDictionary]];
            }
            dict[@"position"] = array;
        }
        else if(_position && [_position isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_position toString];
            if(dateString){
                dict[@"position"] = dateString;
            }
        }
        else {
        
            if(_position != nil) dict[@"position"] = [(SWGObject*)_position asDictionary];
        
        }
    }
    
    
    
    if(_positions != nil){
        if([_positions isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_positions count] ; i++ ) {
				MSXMLPositionDTO *positions = [[MSXMLPositionDTO alloc]init];
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
    
    
    
            if(_hashImage != nil) dict[@"hashImage"] = _hashImage ;
        
    
    
    if(_hashPdf != nil){
        if([_hashPdf isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_hashPdf count] ; i++ ) {
				MSXMLPdfPageHashes *hashPdf = [[MSXMLPdfPageHashes alloc]init];
				hashPdf = [(NSArray*)_hashPdf objectAtIndex:i];
                [array addObject:[(SWGObject*)hashPdf asDictionary]];
            }
            dict[@"hashPdf"] = array;
        }
        else if(_hashPdf && [_hashPdf isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_hashPdf toString];
            if(dateString){
                dict[@"hashPdf"] = dateString;
            }
        }
        else {
        
            if(_hashPdf != nil) dict[@"hashPdf"] = [(SWGObject*)_hashPdf asDictionary];
        
        }
    }
    
    
    
            if(_cipherAlgorithm != nil) dict[@"cipherAlgorithm"] = _cipherAlgorithm ;
        
    
    
            if(_encryptedAesSessionKey != nil) dict[@"encryptedAesSessionKey"] = _encryptedAesSessionKey ;
        
    
    
            if(_trustedThirdParty != nil) dict[@"trustedThirdParty"] = _trustedThirdParty ;
        
    
    
    if(_genericEvidence != nil){
        if([_genericEvidence isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_genericEvidence count] ; i++ ) {
				MSXMLGenericEvidenceDTO *genericEvidence = [[MSXMLGenericEvidenceDTO alloc]init];
				genericEvidence = [(NSArray*)_genericEvidence objectAtIndex:i];
                [array addObject:[(SWGObject*)genericEvidence asDictionary]];
            }
            dict[@"genericEvidence"] = array;
        }
        else if(_genericEvidence && [_genericEvidence isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_genericEvidence toString];
            if(dateString){
                dict[@"genericEvidence"] = dateString;
            }
        }
        else {
        
            if(_genericEvidence != nil) dict[@"genericEvidence"] = [(SWGObject*)_genericEvidence asDictionary];
        
        }
    }
    
    
    
            if(_cipheredData != nil) dict[@"cipheredData"] = _cipheredData ;
        
    
    
            if(_evidenceType != nil) dict[@"evidenceType"] = _evidenceType ;
        
    
    
            if(_evidenceVersion != nil) dict[@"evidenceVersion"] = _evidenceVersion ;
        
    
    
            if(_evidenceTimestamp != nil) dict[@"evidenceTimestamp"] = _evidenceTimestamp ;
        
    
    
            if(_clientTimestamp != nil) dict[@"clientTimestamp"] = _clientTimestamp ;
        
    
    
            if(_serviceTimestamp != nil) dict[@"serviceTimestamp"] = _serviceTimestamp ;
        
    
    
            if(_serviceTimestampType != nil) dict[@"serviceTimestampType"] = _serviceTimestampType ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

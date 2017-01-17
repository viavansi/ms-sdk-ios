#import "SWGDate.h"
#import "MSEvidence.h"

@implementation MSEvidence

-(id)type: (NSString*) type
    code: (NSString*) code
    status: (NSString*) status
    helpText: (NSString*) helpText
    temporalReference: (NSString*) temporalReference
    positions: (NSArray*) positions
    metadata: (NSString*) metadata
    deviceType: (NSString*) deviceType
    hashPdf: (NSArray*) hashPdf
    hashImage: (NSString*) hashImage
    algorithmic: (NSString*) algorithmic
    fingerID: (NSString*) fingerID
    typeFormatSign: (NSString*) typeFormatSign
    certificateAlias: (NSString*) certificateAlias
    certificatePassword: (NSString*) certificatePassword
    metadataCipherPublicKey: (NSString*) metadataCipherPublicKey
    encryptionKeyAlias: (NSString*) encryptionKeyAlias
    required: (NSNumber*) required
    signatureData: (MSEvidenceSignature*) signatureData
    fingerPrintData: (MSEvidenceFingerPrint*) fingerPrintData
    imageData: (MSEvidenceImage*) imageData
    positionsKey: (NSString*) positionsKey
    
{
    _type = type;
    _code = code;
    _status = status;
    _helpText = helpText;
    _temporalReference = temporalReference;
    _positions = positions;
    _metadata = metadata;
    _deviceType = deviceType;
    _hashPdf = hashPdf;
    _hashImage = hashImage;
    _algorithmic = algorithmic;
    _fingerID = fingerID;
    _typeFormatSign = typeFormatSign;
    _certificateAlias = certificateAlias;
    _certificatePassword = certificatePassword;
    _metadataCipherPublicKey = metadataCipherPublicKey;
    _encryptionKeyAlias = encryptionKeyAlias;
    _required = required;
    _signatureData = signatureData;
    _fingerPrintData = fingerPrintData;
    _imageData = imageData;
    _positionsKey = positionsKey;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _code = dict[@"code"];
        
        _status = dict[@"status"];
        
        _helpText = dict[@"helpText"];
        
        _temporalReference = dict[@"temporalReference"];
        
        
        
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
        
        
        _metadata = dict[@"metadata"];
        
        _deviceType = dict[@"deviceType"];
        
        _hashPdf = dict[@"hashPdf"];
        
        _hashImage = dict[@"hashImage"];
        
        _algorithmic = dict[@"algorithmic"];
        
        _fingerID = dict[@"fingerID"];
        
        _typeFormatSign = dict[@"typeFormatSign"];
        
        _certificateAlias = dict[@"certificateAlias"];
        
        _certificatePassword = dict[@"certificatePassword"];
        
        _metadataCipherPublicKey = dict[@"metadataCipherPublicKey"];
        
        _encryptionKeyAlias = dict[@"encryptionKeyAlias"];
        
        _required = dict[@"required"];
        
        
        
        id signatureData_dict = dict[@"signatureData"];
        
        if(signatureData_dict != nil)
            _signatureData = [[MSEvidenceSignature  alloc]initWithValues:signatureData_dict];
        
        
        
        
        id fingerPrintData_dict = dict[@"fingerPrintData"];
        
        if(fingerPrintData_dict != nil)
            _fingerPrintData = [[MSEvidenceFingerPrint  alloc]initWithValues:fingerPrintData_dict];
        
        
        
        
        id imageData_dict = dict[@"imageData"];
        
        if(imageData_dict != nil)
            _imageData = [[MSEvidenceImage  alloc]initWithValues:imageData_dict];
        
        
        _positionsKey = dict[@"positionsKey"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_helpText != nil) dict[@"helpText"] = _helpText ;
        
    
    
            if(_temporalReference != nil) dict[@"temporalReference"] = _temporalReference ;
        
    
    
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
    
    
    
            if(_metadata != nil) dict[@"metadata"] = _metadata ;
        
    
    
            if(_deviceType != nil) dict[@"deviceType"] = _deviceType ;
        
    
    
            if(_hashPdf != nil) dict[@"hashPdf"] = _hashPdf ;
        
    
    
            if(_hashImage != nil) dict[@"hashImage"] = _hashImage ;
        
    
    
            if(_algorithmic != nil) dict[@"algorithmic"] = _algorithmic ;
        
    
    
            if(_fingerID != nil) dict[@"fingerID"] = _fingerID ;
        
    
    
            if(_typeFormatSign != nil) dict[@"typeFormatSign"] = _typeFormatSign ;
        
    
    
            if(_certificateAlias != nil) dict[@"certificateAlias"] = _certificateAlias ;
        
    
    
            if(_certificatePassword != nil) dict[@"certificatePassword"] = _certificatePassword ;
        
    
    
            if(_metadataCipherPublicKey != nil) dict[@"metadataCipherPublicKey"] = _metadataCipherPublicKey ;
        
    
    
            if(_encryptionKeyAlias != nil) dict[@"encryptionKeyAlias"] = _encryptionKeyAlias ;
        
    
    
            if(_required != nil) dict[@"required"] = _required ;
        
    
    
    if(_signatureData != nil){
        if([_signatureData isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_signatureData count] ; i++ ) {
				MSEvidenceSignature *signatureData = [[MSEvidenceSignature alloc]init];
				signatureData = [(NSArray*)_signatureData objectAtIndex:i];            
                [array addObject:[(SWGObject*)signatureData asDictionary]];
            }
            dict[@"signatureData"] = array;
        }
        else if(_signatureData && [_signatureData isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_signatureData toString];
            if(dateString){
                dict[@"signatureData"] = dateString;
            }
        }
        else {
        
            if(_signatureData != nil) dict[@"signatureData"] = [(SWGObject*)_signatureData asDictionary];
        
        }
    }
    
    
    
    if(_fingerPrintData != nil){
        if([_fingerPrintData isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_fingerPrintData count] ; i++ ) {
				MSEvidenceFingerPrint *fingerPrintData = [[MSEvidenceFingerPrint alloc]init];
				fingerPrintData = [(NSArray*)_fingerPrintData objectAtIndex:i];            
                [array addObject:[(SWGObject*)fingerPrintData asDictionary]];
            }
            dict[@"fingerPrintData"] = array;
        }
        else if(_fingerPrintData && [_fingerPrintData isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_fingerPrintData toString];
            if(dateString){
                dict[@"fingerPrintData"] = dateString;
            }
        }
        else {
        
            if(_fingerPrintData != nil) dict[@"fingerPrintData"] = [(SWGObject*)_fingerPrintData asDictionary];
        
        }
    }
    
    
    
    if(_imageData != nil){
        if([_imageData isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_imageData count] ; i++ ) {
				MSEvidenceImage *imageData = [[MSEvidenceImage alloc]init];
				imageData = [(NSArray*)_imageData objectAtIndex:i];            
                [array addObject:[(SWGObject*)imageData asDictionary]];
            }
            dict[@"imageData"] = array;
        }
        else if(_imageData && [_imageData isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_imageData toString];
            if(dateString){
                dict[@"imageData"] = dateString;
            }
        }
        else {
        
            if(_imageData != nil) dict[@"imageData"] = [(SWGObject*)_imageData asDictionary];
        
        }
    }
    
    
    
            if(_positionsKey != nil) dict[@"positionsKey"] = _positionsKey ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSEvidence.h"

@implementation MSEvidence

@synthesize type = _type;
@synthesize code = _code;
@synthesize status = _status;
@synthesize helpText = _helpText;
@synthesize temporalReference = _temporalReference;
@synthesize positions = _positions;
@synthesize metadata = _metadata;
@synthesize deviceType = _deviceType;
@synthesize hashPdf = _hashPdf;
@synthesize hashImage = _hashImage;
@synthesize algorithmic = _algorithmic;
@synthesize fingerID = _fingerID;
@synthesize typeFormatSign = _typeFormatSign;
@synthesize certificateAlias = _certificateAlias;
@synthesize certificatePassword = _certificatePassword;
@synthesize metadataCipherPublicKey = _metadataCipherPublicKey;
@synthesize encryptionKeyAlias = _encryptionKeyAlias;
@synthesize optional = _optional;
@synthesize signatureData = _signatureData;
@synthesize fingerPrintData = _fingerPrintData;
@synthesize imageData = _imageData;
@synthesize positionsKey = _positionsKey;
@synthesize stampsMin = _stampsMin;
@synthesize stampsPolicy = _stampsPolicy;
@synthesize stylus = _stylus;
@synthesize geolocation = _geolocation;
@synthesize imageQuality = _imageQuality;
@synthesize imageScaleFactor = _imageScaleFactor;
@synthesize wacomURL = _wacomURL;
@synthesize ocr = _ocr;
@synthesize otpSmsData = _otpSmsData;
@synthesize phone = _phone;

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
    optional: (NSNumber*) optional
    signatureData: (MSEvidenceSignature*) signatureData
    fingerPrintData: (MSEvidenceFingerPrint*) fingerPrintData
    imageData: (MSEvidenceImage*) imageData
    positionsKey: (NSString*) positionsKey
    stampsMin: (NSNumber*) stampsMin
    stampsPolicy: (NSString*) stampsPolicy
    stylus: (NSArray*) stylus
    geolocation: (MSGeolocation*) geolocation
    imageQuality: (NSNumber*) imageQuality
    imageScaleFactor: (NSNumber*) imageScaleFactor
    wacomURL: (NSString*) wacomURL
    ocr: (MSOcrData*) ocr
    otpSmsData: (MSEvidenceOtpSms*) otpSmsData
    phone: (NSString*) phone
    
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
    _optional = optional;
    _signatureData = signatureData;
    _fingerPrintData = fingerPrintData;
    _imageData = imageData;
    _positionsKey = positionsKey;
    _stampsMin = stampsMin;
    _stampsPolicy = stampsPolicy;
    _stylus = stylus;
    _geolocation = geolocation;
    _imageQuality = imageQuality;
    _imageScaleFactor = imageScaleFactor;
    _wacomURL = wacomURL;
    _ocr = ocr;
    _otpSmsData = otpSmsData;
    _phone = phone;
    

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
        
        _optional = dict[@"optional"];
        
        
        
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
        
        _stampsMin = dict[@"stampsMin"];
        
        _stampsPolicy = dict[@"stampsPolicy"];
        
        _stylus = dict[@"stylus"];
        
        
        
        id geolocation_dict = dict[@"geolocation"];
        
        if(geolocation_dict != nil)
            _geolocation = [[MSGeolocation  alloc]initWithValues:geolocation_dict];
        
        
        _imageQuality = dict[@"imageQuality"];
        
        _imageScaleFactor = dict[@"imageScaleFactor"];
        
        _wacomURL = dict[@"wacomURL"];
        
        
        
        id ocr_dict = dict[@"ocr"];
        
        if(ocr_dict != nil)
            _ocr = [[MSOcrData  alloc]initWithValues:ocr_dict];
        
        
        
        
        id otpSmsData_dict = dict[@"otpSmsData"];
        
        if(otpSmsData_dict != nil)
            _otpSmsData = [[MSEvidenceOtpSms  alloc]initWithValues:otpSmsData_dict];
        
        
        _phone = dict[@"phone"];
        
        
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
        
    
    
            if(_optional != nil) dict[@"optional"] = _optional ;
        
    
    
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
        
    
    
            if(_stampsMin != nil) dict[@"stampsMin"] = _stampsMin ;
        
    
    
            if(_stampsPolicy != nil) dict[@"stampsPolicy"] = _stampsPolicy ;
        
    
    
            if(_stylus != nil) dict[@"stylus"] = _stylus ;
        
    
    
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
    
    
    
            if(_imageQuality != nil) dict[@"imageQuality"] = _imageQuality ;
        
    
    
            if(_imageScaleFactor != nil) dict[@"imageScaleFactor"] = _imageScaleFactor ;
        
    
    
            if(_wacomURL != nil) dict[@"wacomURL"] = _wacomURL ;
        
    
    
    if(_ocr != nil){
        if([_ocr isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_ocr count] ; i++ ) {
				MSOcrData *ocr = [[MSOcrData alloc]init];
				ocr = [(NSArray*)_ocr objectAtIndex:i];
                [array addObject:[(SWGObject*)ocr asDictionary]];
            }
            dict[@"ocr"] = array;
        }
        else if(_ocr && [_ocr isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_ocr toString];
            if(dateString){
                dict[@"ocr"] = dateString;
            }
        }
        else {
        
            if(_ocr != nil) dict[@"ocr"] = [(SWGObject*)_ocr asDictionary];
        
        }
    }
    
    
    
    if(_otpSmsData != nil){
        if([_otpSmsData isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_otpSmsData count] ; i++ ) {
				MSEvidenceOtpSms *otpSmsData = [[MSEvidenceOtpSms alloc]init];
				otpSmsData = [(NSArray*)_otpSmsData objectAtIndex:i];
                [array addObject:[(SWGObject*)otpSmsData asDictionary]];
            }
            dict[@"otpSmsData"] = array;
        }
        else if(_otpSmsData && [_otpSmsData isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_otpSmsData toString];
            if(dateString){
                dict[@"otpSmsData"] = dateString;
            }
        }
        else {
        
            if(_otpSmsData != nil) dict[@"otpSmsData"] = [(SWGObject*)_otpSmsData asDictionary];
        
        }
    }
    
    
    
            if(_phone != nil) dict[@"phone"] = _phone ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

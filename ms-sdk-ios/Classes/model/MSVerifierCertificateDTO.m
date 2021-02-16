#import "SWGDate.h"
#import "MSVerifierCertificateDTO.h"

@implementation MSVerifierCertificateDTO

@synthesize certX509Base64 = _certX509Base64;
@synthesize subject = _subject;
@synthesize issuer = _issuer;
@synthesize notafter = _notafter;
@synthesize notbefore = _notbefore;
@synthesize signAlgName = _signAlgName;
@synthesize signAlgOID = _signAlgOID;
@synthesize type = _type;
@synthesize version = _version;
@synthesize serialNumber = _serialNumber;
@synthesize policyIdentifier = _policyIdentifier;
@synthesize expired = _expired;
@synthesize expiredAfterSigningDate = _expiredAfterSigningDate;
@synthesize selfSigned = _selfSigned;
@synthesize trusted = _trusted;
@synthesize trustedSource = _trustedSource;
@synthesize valid = _valid;
@synthesize keyUsage = _keyUsage;
@synthesize oids = _oids;
@synthesize validation = _validation;
@synthesize issuerCert = _issuerCert;

-(id)certX509Base64: (NSString*) certX509Base64
    subject: (NSString*) subject
    issuer: (NSString*) issuer
    notafter: (SWGDate*) notafter
    notbefore: (SWGDate*) notbefore
    signAlgName: (NSString*) signAlgName
    signAlgOID: (NSString*) signAlgOID
    type: (NSString*) type
    version: (NSString*) version
    serialNumber: (NSString*) serialNumber
    policyIdentifier: (NSString*) policyIdentifier
    expired: (NSNumber*) expired
    expiredAfterSigningDate: (NSNumber*) expiredAfterSigningDate
    selfSigned: (NSNumber*) selfSigned
    trusted: (NSNumber*) trusted
    trustedSource: (NSString*) trustedSource
    valid: (NSNumber*) valid
    keyUsage: (MSVerifierKeyUsageDTO*) keyUsage
    oids: (NSArray*) oids
    validation: (MSVerifierDTO*) validation
    issuerCert: (MSVerifierCertificateDTO*) issuerCert
    
{
    _certX509Base64 = certX509Base64;
    _subject = subject;
    _issuer = issuer;
    _notafter = notafter;
    _notbefore = notbefore;
    _signAlgName = signAlgName;
    _signAlgOID = signAlgOID;
    _type = type;
    _version = version;
    _serialNumber = serialNumber;
    _policyIdentifier = policyIdentifier;
    _expired = expired;
    _expiredAfterSigningDate = expiredAfterSigningDate;
    _selfSigned = selfSigned;
    _trusted = trusted;
    _trustedSource = trustedSource;
    _valid = valid;
    _keyUsage = keyUsage;
    _oids = oids;
    _validation = validation;
    _issuerCert = issuerCert;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _certX509Base64 = dict[@"certX509Base64"];
        
        _subject = dict[@"subject"];
        
        _issuer = dict[@"issuer"];
        
        
        
        id notafter_dict = dict[@"notafter"];
        
        if(notafter_dict != nil)
            _notafter = [[SWGDate  alloc]initWithValues:notafter_dict];
        
        
        
        
        id notbefore_dict = dict[@"notbefore"];
        
        if(notbefore_dict != nil)
            _notbefore = [[SWGDate  alloc]initWithValues:notbefore_dict];
        
        
        _signAlgName = dict[@"signAlgName"];
        
        _signAlgOID = dict[@"signAlgOID"];
        
        _type = dict[@"type"];
        
        _version = dict[@"version"];
        
        _serialNumber = dict[@"serialNumber"];
        
        _policyIdentifier = dict[@"policyIdentifier"];
        
        _expired = dict[@"expired"];
        
        _expiredAfterSigningDate = dict[@"expiredAfterSigningDate"];
        
        _selfSigned = dict[@"selfSigned"];
        
        _trusted = dict[@"trusted"];
        
        _trustedSource = dict[@"trustedSource"];
        
        _valid = dict[@"valid"];
        
        
        
        id keyUsage_dict = dict[@"keyUsage"];
        
        if(keyUsage_dict != nil)
            _keyUsage = [[MSVerifierKeyUsageDTO  alloc]initWithValues:keyUsage_dict];
        
        
        
        
        id oids_dict = dict[@"oids"];
        
        if([oids_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)oids_dict count]];
            if([(NSArray*)oids_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)oids_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[oids_dict objectAtIndex:i]];
                    MSVerifierOidDTO* d = [[MSVerifierOidDTO alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _oids = [[NSArray alloc] initWithArray:objs];
            }
            else
                _oids = [[NSArray alloc] init];
        }
        else {
            _oids = [[NSArray alloc] init];
        }
        
        
        
        
        id validation_dict = dict[@"validation"];
        
        if(validation_dict != nil)
            _validation = [[MSVerifierDTO  alloc]initWithValues:validation_dict];
        
        
        
        
        id issuerCert_dict = dict[@"issuerCert"];
        
        if(issuerCert_dict != nil)
            _issuerCert = [[MSVerifierCertificateDTO  alloc]initWithValues:issuerCert_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_certX509Base64 != nil) dict[@"certX509Base64"] = _certX509Base64 ;
        
    
    
            if(_subject != nil) dict[@"subject"] = _subject ;
        
    
    
            if(_issuer != nil) dict[@"issuer"] = _issuer ;
        
    
    
    if(_notafter != nil){
        if([_notafter isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_notafter count] ; i++ ) {
				SWGDate *notafter = [[SWGDate alloc]init];
				notafter = [(NSArray*)_notafter objectAtIndex:i];
                [array addObject:[(SWGObject*)notafter asDictionary]];
            }
            dict[@"notafter"] = array;
        }
        else if(_notafter && [_notafter isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_notafter toString];
            if(dateString){
                dict[@"notafter"] = dateString;
            }
        }
        else {
        
            if(_notafter != nil) dict[@"notafter"] = [(SWGObject*)_notafter asDictionary];
        
        }
    }
    
    
    
    if(_notbefore != nil){
        if([_notbefore isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_notbefore count] ; i++ ) {
				SWGDate *notbefore = [[SWGDate alloc]init];
				notbefore = [(NSArray*)_notbefore objectAtIndex:i];
                [array addObject:[(SWGObject*)notbefore asDictionary]];
            }
            dict[@"notbefore"] = array;
        }
        else if(_notbefore && [_notbefore isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_notbefore toString];
            if(dateString){
                dict[@"notbefore"] = dateString;
            }
        }
        else {
        
            if(_notbefore != nil) dict[@"notbefore"] = [(SWGObject*)_notbefore asDictionary];
        
        }
    }
    
    
    
            if(_signAlgName != nil) dict[@"signAlgName"] = _signAlgName ;
        
    
    
            if(_signAlgOID != nil) dict[@"signAlgOID"] = _signAlgOID ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    
    
            if(_serialNumber != nil) dict[@"serialNumber"] = _serialNumber ;
        
    
    
            if(_policyIdentifier != nil) dict[@"policyIdentifier"] = _policyIdentifier ;
        
    
    
            if(_expired != nil) dict[@"expired"] = _expired ;
        
    
    
            if(_expiredAfterSigningDate != nil) dict[@"expiredAfterSigningDate"] = _expiredAfterSigningDate ;
        
    
    
            if(_selfSigned != nil) dict[@"selfSigned"] = _selfSigned ;
        
    
    
            if(_trusted != nil) dict[@"trusted"] = _trusted ;
        
    
    
            if(_trustedSource != nil) dict[@"trustedSource"] = _trustedSource ;
        
    
    
            if(_valid != nil) dict[@"valid"] = _valid ;
        
    
    
    if(_keyUsage != nil){
        if([_keyUsage isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_keyUsage count] ; i++ ) {
				MSVerifierKeyUsageDTO *keyUsage = [[MSVerifierKeyUsageDTO alloc]init];
				keyUsage = [(NSArray*)_keyUsage objectAtIndex:i];
                [array addObject:[(SWGObject*)keyUsage asDictionary]];
            }
            dict[@"keyUsage"] = array;
        }
        else if(_keyUsage && [_keyUsage isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_keyUsage toString];
            if(dateString){
                dict[@"keyUsage"] = dateString;
            }
        }
        else {
        
            if(_keyUsage != nil) dict[@"keyUsage"] = [(SWGObject*)_keyUsage asDictionary];
        
        }
    }
    
    
    
    if(_oids != nil){
        if([_oids isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_oids count] ; i++ ) {
				MSVerifierOidDTO *oids = [[MSVerifierOidDTO alloc]init];
				oids = [(NSArray*)_oids objectAtIndex:i];
                [array addObject:[(SWGObject*)oids asDictionary]];
            }
            dict[@"oids"] = array;
        }
        else if(_oids && [_oids isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_oids toString];
            if(dateString){
                dict[@"oids"] = dateString;
            }
        }
        else {
        
            if(_oids != nil) dict[@"oids"] = [(SWGObject*)_oids asDictionary];
        
        }
    }
    
    
    
    if(_validation != nil){
        if([_validation isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_validation count] ; i++ ) {
				MSVerifierDTO *validation = [[MSVerifierDTO alloc]init];
				validation = [(NSArray*)_validation objectAtIndex:i];
                [array addObject:[(SWGObject*)validation asDictionary]];
            }
            dict[@"validation"] = array;
        }
        else if(_validation && [_validation isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_validation toString];
            if(dateString){
                dict[@"validation"] = dateString;
            }
        }
        else {
        
            if(_validation != nil) dict[@"validation"] = [(SWGObject*)_validation asDictionary];
        
        }
    }
    
    
    
    if(_issuerCert != nil){
        if([_issuerCert isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_issuerCert count] ; i++ ) {
				MSVerifierCertificateDTO *issuerCert = [[MSVerifierCertificateDTO alloc]init];
				issuerCert = [(NSArray*)_issuerCert objectAtIndex:i];
                [array addObject:[(SWGObject*)issuerCert asDictionary]];
            }
            dict[@"issuerCert"] = array;
        }
        else if(_issuerCert && [_issuerCert isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_issuerCert toString];
            if(dateString){
                dict[@"issuerCert"] = dateString;
            }
        }
        else {
        
            if(_issuerCert != nil) dict[@"issuerCert"] = [(SWGObject*)_issuerCert asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

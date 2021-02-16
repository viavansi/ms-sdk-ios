#import "SWGDate.h"
#import "MSX509Certificate.h"

@implementation MSX509Certificate

@synthesize type = _type;
@synthesize subjectX500Principal = _subjectX500Principal;
@synthesize issuerX500Principal = _issuerX500Principal;
@synthesize issuerDN = _issuerDN;
@synthesize subjectDN = _subjectDN;
@synthesize signature = _signature;
@synthesize basicConstraints = _basicConstraints;
@synthesize sigAlgName = _sigAlgName;
@synthesize keyUsage = _keyUsage;
@synthesize extendedKeyUsage = _extendedKeyUsage;
@synthesize tbscertificate = _tbscertificate;
@synthesize issuerAlternativeNames = _issuerAlternativeNames;
@synthesize issuerUniqueID = _issuerUniqueID;
@synthesize sigAlgOID = _sigAlgOID;
@synthesize sigAlgParams = _sigAlgParams;
@synthesize subjectAlternativeNames = _subjectAlternativeNames;
@synthesize subjectUniqueID = _subjectUniqueID;
@synthesize notAfter = _notAfter;
@synthesize serialNumber = _serialNumber;
@synthesize notBefore = _notBefore;
@synthesize version = _version;
@synthesize criticalExtensionOIDs = _criticalExtensionOIDs;
@synthesize nonCriticalExtensionOIDs = _nonCriticalExtensionOIDs;
@synthesize encoded = _encoded;
@synthesize publicKey = _publicKey;

-(id)type: (NSString*) type
    subjectX500Principal: (MSX500Principal*) subjectX500Principal
    issuerX500Principal: (MSX500Principal*) issuerX500Principal
    issuerDN: (MSPrincipal*) issuerDN
    subjectDN: (MSPrincipal*) subjectDN
    signature: (NSArray*) signature
    basicConstraints: (NSNumber*) basicConstraints
    sigAlgName: (NSString*) sigAlgName
    keyUsage: (NSArray*) keyUsage
    extendedKeyUsage: (NSArray*) extendedKeyUsage
    tbscertificate: (NSArray*) tbscertificate
    issuerAlternativeNames: (NSArray*) issuerAlternativeNames
    issuerUniqueID: (NSArray*) issuerUniqueID
    sigAlgOID: (NSString*) sigAlgOID
    sigAlgParams: (NSArray*) sigAlgParams
    subjectAlternativeNames: (NSArray*) subjectAlternativeNames
    subjectUniqueID: (NSArray*) subjectUniqueID
    notAfter: (SWGDate*) notAfter
    serialNumber: (NSNumber*) serialNumber
    notBefore: (SWGDate*) notBefore
    version: (NSNumber*) version
    criticalExtensionOIDs: (NSArray*) criticalExtensionOIDs
    nonCriticalExtensionOIDs: (NSArray*) nonCriticalExtensionOIDs
    encoded: (NSArray*) encoded
    publicKey: (MSPublicKey*) publicKey
    
{
    _type = type;
    _subjectX500Principal = subjectX500Principal;
    _issuerX500Principal = issuerX500Principal;
    _issuerDN = issuerDN;
    _subjectDN = subjectDN;
    _signature = signature;
    _basicConstraints = basicConstraints;
    _sigAlgName = sigAlgName;
    _keyUsage = keyUsage;
    _extendedKeyUsage = extendedKeyUsage;
    _tbscertificate = tbscertificate;
    _issuerAlternativeNames = issuerAlternativeNames;
    _issuerUniqueID = issuerUniqueID;
    _sigAlgOID = sigAlgOID;
    _sigAlgParams = sigAlgParams;
    _subjectAlternativeNames = subjectAlternativeNames;
    _subjectUniqueID = subjectUniqueID;
    _notAfter = notAfter;
    _serialNumber = serialNumber;
    _notBefore = notBefore;
    _version = version;
    _criticalExtensionOIDs = criticalExtensionOIDs;
    _nonCriticalExtensionOIDs = nonCriticalExtensionOIDs;
    _encoded = encoded;
    _publicKey = publicKey;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        
        
        id subjectX500Principal_dict = dict[@"subjectX500Principal"];
        
        if(subjectX500Principal_dict != nil)
            _subjectX500Principal = [[MSX500Principal  alloc]initWithValues:subjectX500Principal_dict];
        
        
        
        
        id issuerX500Principal_dict = dict[@"issuerX500Principal"];
        
        if(issuerX500Principal_dict != nil)
            _issuerX500Principal = [[MSX500Principal  alloc]initWithValues:issuerX500Principal_dict];
        
        
        
        
        id issuerDN_dict = dict[@"issuerDN"];
        
        if(issuerDN_dict != nil)
            _issuerDN = [[MSPrincipal  alloc]initWithValues:issuerDN_dict];
        
        
        
        
        id subjectDN_dict = dict[@"subjectDN"];
        
        if(subjectDN_dict != nil)
            _subjectDN = [[MSPrincipal  alloc]initWithValues:subjectDN_dict];
        
        
        _signature = dict[@"signature"];
        
        _basicConstraints = dict[@"basicConstraints"];
        
        _sigAlgName = dict[@"sigAlgName"];
        
        _keyUsage = dict[@"keyUsage"];
        
        _extendedKeyUsage = dict[@"extendedKeyUsage"];
        
        _tbscertificate = dict[@"tbscertificate"];
        
        
        
        id issuerAlternativeNames_dict = dict[@"issuerAlternativeNames"];
        
        if([issuerAlternativeNames_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)issuerAlternativeNames_dict count]];
            if([(NSArray*)issuerAlternativeNames_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)issuerAlternativeNames_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[issuerAlternativeNames_dict objectAtIndex:i]];
                    [objs addObject:dict];
                }
                _issuerAlternativeNames = [[NSArray alloc] initWithArray:objs];
            }
            else
                _issuerAlternativeNames = [[NSArray alloc] init];
        }
        else {
            _issuerAlternativeNames = [[NSArray alloc] init];
        }
        
        
        _issuerUniqueID = dict[@"issuerUniqueID"];
        
        _sigAlgOID = dict[@"sigAlgOID"];
        
        _sigAlgParams = dict[@"sigAlgParams"];
        
        
        
        id subjectAlternativeNames_dict = dict[@"subjectAlternativeNames"];
        
        if([subjectAlternativeNames_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)subjectAlternativeNames_dict count]];
            if([(NSArray*)subjectAlternativeNames_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)subjectAlternativeNames_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[subjectAlternativeNames_dict objectAtIndex:i]];
                    [objs addObject:dict];
                }
                _subjectAlternativeNames = [[NSArray alloc] initWithArray:objs];
            }
            else
                _subjectAlternativeNames = [[NSArray alloc] init];
        }
        else {
            _subjectAlternativeNames = [[NSArray alloc] init];
        }
        
        
        _subjectUniqueID = dict[@"subjectUniqueID"];
        
        
        
        id notAfter_dict = dict[@"notAfter"];
        
        if(notAfter_dict != nil)
            _notAfter = [[SWGDate  alloc]initWithValues:notAfter_dict];
        
        
        _serialNumber = dict[@"serialNumber"];
        
        
        
        id notBefore_dict = dict[@"notBefore"];
        
        if(notBefore_dict != nil)
            _notBefore = [[SWGDate  alloc]initWithValues:notBefore_dict];
        
        
        _version = dict[@"version"];
        
        _criticalExtensionOIDs = dict[@"criticalExtensionOIDs"];
        
        _nonCriticalExtensionOIDs = dict[@"nonCriticalExtensionOIDs"];
        
        _encoded = dict[@"encoded"];
        
        
        
        id publicKey_dict = dict[@"publicKey"];
        
        if(publicKey_dict != nil)
            _publicKey = [[MSPublicKey  alloc]initWithValues:publicKey_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
    if(_subjectX500Principal != nil){
        if([_subjectX500Principal isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_subjectX500Principal count] ; i++ ) {
				MSX500Principal *subjectX500Principal = [[MSX500Principal alloc]init];
				subjectX500Principal = [(NSArray*)_subjectX500Principal objectAtIndex:i];
                [array addObject:[(SWGObject*)subjectX500Principal asDictionary]];
            }
            dict[@"subjectX500Principal"] = array;
        }
        else if(_subjectX500Principal && [_subjectX500Principal isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_subjectX500Principal toString];
            if(dateString){
                dict[@"subjectX500Principal"] = dateString;
            }
        }
        else {
        
            if(_subjectX500Principal != nil) dict[@"subjectX500Principal"] = [(SWGObject*)_subjectX500Principal asDictionary];
        
        }
    }
    
    
    
    if(_issuerX500Principal != nil){
        if([_issuerX500Principal isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_issuerX500Principal count] ; i++ ) {
				MSX500Principal *issuerX500Principal = [[MSX500Principal alloc]init];
				issuerX500Principal = [(NSArray*)_issuerX500Principal objectAtIndex:i];
                [array addObject:[(SWGObject*)issuerX500Principal asDictionary]];
            }
            dict[@"issuerX500Principal"] = array;
        }
        else if(_issuerX500Principal && [_issuerX500Principal isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_issuerX500Principal toString];
            if(dateString){
                dict[@"issuerX500Principal"] = dateString;
            }
        }
        else {
        
            if(_issuerX500Principal != nil) dict[@"issuerX500Principal"] = [(SWGObject*)_issuerX500Principal asDictionary];
        
        }
    }
    
    
    
    if(_issuerDN != nil){
        if([_issuerDN isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_issuerDN count] ; i++ ) {
				MSPrincipal *issuerDN = [[MSPrincipal alloc]init];
				issuerDN = [(NSArray*)_issuerDN objectAtIndex:i];
                [array addObject:[(SWGObject*)issuerDN asDictionary]];
            }
            dict[@"issuerDN"] = array;
        }
        else if(_issuerDN && [_issuerDN isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_issuerDN toString];
            if(dateString){
                dict[@"issuerDN"] = dateString;
            }
        }
        else {
        
            if(_issuerDN != nil) dict[@"issuerDN"] = [(SWGObject*)_issuerDN asDictionary];
        
        }
    }
    
    
    
    if(_subjectDN != nil){
        if([_subjectDN isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_subjectDN count] ; i++ ) {
				MSPrincipal *subjectDN = [[MSPrincipal alloc]init];
				subjectDN = [(NSArray*)_subjectDN objectAtIndex:i];
                [array addObject:[(SWGObject*)subjectDN asDictionary]];
            }
            dict[@"subjectDN"] = array;
        }
        else if(_subjectDN && [_subjectDN isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_subjectDN toString];
            if(dateString){
                dict[@"subjectDN"] = dateString;
            }
        }
        else {
        
            if(_subjectDN != nil) dict[@"subjectDN"] = [(SWGObject*)_subjectDN asDictionary];
        
        }
    }
    
    
    
            if(_signature != nil) dict[@"signature"] = _signature ;
        
    
    
            if(_basicConstraints != nil) dict[@"basicConstraints"] = _basicConstraints ;
        
    
    
            if(_sigAlgName != nil) dict[@"sigAlgName"] = _sigAlgName ;
        
    
    
            if(_keyUsage != nil) dict[@"keyUsage"] = _keyUsage ;
        
    
    
            if(_extendedKeyUsage != nil) dict[@"extendedKeyUsage"] = _extendedKeyUsage ;
        
    
    
            if(_tbscertificate != nil) dict[@"tbscertificate"] = _tbscertificate ;
        
    
    
    if(_issuerAlternativeNames != nil){
        if([_issuerAlternativeNames isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_issuerAlternativeNames count] ; i++ ) {
				NSArray *issuerAlternativeNames = [[NSArray alloc]init];
				issuerAlternativeNames = [(NSArray*)_issuerAlternativeNames objectAtIndex:i];
                [array addObject:[(SWGObject*)issuerAlternativeNames asDictionary]];
            }
            dict[@"issuerAlternativeNames"] = array;
        }
        else if(_issuerAlternativeNames && [_issuerAlternativeNames isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_issuerAlternativeNames toString];
            if(dateString){
                dict[@"issuerAlternativeNames"] = dateString;
            }
        }
        else {
        
            if(_issuerAlternativeNames != nil) dict[@"issuerAlternativeNames"] = [(SWGObject*)_issuerAlternativeNames asDictionary];
        
        }
    }
    
    
    
            if(_issuerUniqueID != nil) dict[@"issuerUniqueID"] = _issuerUniqueID ;
        
    
    
            if(_sigAlgOID != nil) dict[@"sigAlgOID"] = _sigAlgOID ;
        
    
    
            if(_sigAlgParams != nil) dict[@"sigAlgParams"] = _sigAlgParams ;
        
    
    
    if(_subjectAlternativeNames != nil){
        if([_subjectAlternativeNames isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_subjectAlternativeNames count] ; i++ ) {
				NSArray *subjectAlternativeNames = [[NSArray alloc]init];
				subjectAlternativeNames = [(NSArray*)_subjectAlternativeNames objectAtIndex:i];
                [array addObject:[(SWGObject*)subjectAlternativeNames asDictionary]];
            }
            dict[@"subjectAlternativeNames"] = array;
        }
        else if(_subjectAlternativeNames && [_subjectAlternativeNames isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_subjectAlternativeNames toString];
            if(dateString){
                dict[@"subjectAlternativeNames"] = dateString;
            }
        }
        else {
        
            if(_subjectAlternativeNames != nil) dict[@"subjectAlternativeNames"] = [(SWGObject*)_subjectAlternativeNames asDictionary];
        
        }
    }
    
    
    
            if(_subjectUniqueID != nil) dict[@"subjectUniqueID"] = _subjectUniqueID ;
        
    
    
    if(_notAfter != nil){
        if([_notAfter isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_notAfter count] ; i++ ) {
				SWGDate *notAfter = [[SWGDate alloc]init];
				notAfter = [(NSArray*)_notAfter objectAtIndex:i];
                [array addObject:[(SWGObject*)notAfter asDictionary]];
            }
            dict[@"notAfter"] = array;
        }
        else if(_notAfter && [_notAfter isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_notAfter toString];
            if(dateString){
                dict[@"notAfter"] = dateString;
            }
        }
        else {
        
            if(_notAfter != nil) dict[@"notAfter"] = [(SWGObject*)_notAfter asDictionary];
        
        }
    }
    
    
    
            if(_serialNumber != nil) dict[@"serialNumber"] = _serialNumber ;
        
    
    
    if(_notBefore != nil){
        if([_notBefore isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_notBefore count] ; i++ ) {
				SWGDate *notBefore = [[SWGDate alloc]init];
				notBefore = [(NSArray*)_notBefore objectAtIndex:i];
                [array addObject:[(SWGObject*)notBefore asDictionary]];
            }
            dict[@"notBefore"] = array;
        }
        else if(_notBefore && [_notBefore isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_notBefore toString];
            if(dateString){
                dict[@"notBefore"] = dateString;
            }
        }
        else {
        
            if(_notBefore != nil) dict[@"notBefore"] = [(SWGObject*)_notBefore asDictionary];
        
        }
    }
    
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    
    
            if(_criticalExtensionOIDs != nil) dict[@"criticalExtensionOIDs"] = _criticalExtensionOIDs ;
        
    
    
            if(_nonCriticalExtensionOIDs != nil) dict[@"nonCriticalExtensionOIDs"] = _nonCriticalExtensionOIDs ;
        
    
    
            if(_encoded != nil) dict[@"encoded"] = _encoded ;
        
    
    
    if(_publicKey != nil){
        if([_publicKey isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_publicKey count] ; i++ ) {
				MSPublicKey *publicKey = [[MSPublicKey alloc]init];
				publicKey = [(NSArray*)_publicKey objectAtIndex:i];
                [array addObject:[(SWGObject*)publicKey asDictionary]];
            }
            dict[@"publicKey"] = array;
        }
        else if(_publicKey && [_publicKey isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_publicKey toString];
            if(dateString){
                dict[@"publicKey"] = dateString;
            }
        }
        else {
        
            if(_publicKey != nil) dict[@"publicKey"] = [(SWGObject*)_publicKey asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

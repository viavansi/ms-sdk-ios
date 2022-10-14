#import "SWGDate.h"
#import "MSConfigSignatureDTO.h"

@implementation MSConfigSignatureDTO

@synthesize idReference = _idReference;
@synthesize signatureAlgorithm = _signatureAlgorithm;
@synthesize custodyCode = _custodyCode;
@synthesize custodyStorage = _custodyStorage;
@synthesize custodyEncrypted = _custodyEncrypted;
@synthesize auditoryCipherDisable = _auditoryCipherDisable;
@synthesize auditoryDisable = _auditoryDisable;
@synthesize tsa = _tsa;
@synthesize signatureType = _signatureType;
@synthesize packaging = _packaging;
@synthesize policy = _policy;
@synthesize validSignerIds = _validSignerIds;
@synthesize signatureReason = _signatureReason;
@synthesize country = _country;
@synthesize stateOrProvince = _stateOrProvince;
@synthesize postalCode = _postalCode;
@synthesize city = _city;
@synthesize cadesConfig = _cadesConfig;
@synthesize padesConfig = _padesConfig;
@synthesize xadesConfig = _xadesConfig;
@synthesize operationId = _operationId;
@synthesize operationServer = _operationServer;
@synthesize timestampAlgorithm = _timestampAlgorithm;
@synthesize autoVerifyDisabled = _autoVerifyDisabled;
@synthesize autoVerifyError = _autoVerifyError;
@synthesize revocationRequestType = _revocationRequestType;

-(id)idReference: (NSString*) idReference
    signatureAlgorithm: (NSString*) signatureAlgorithm
    custodyCode: (NSString*) custodyCode
    custodyStorage: (NSNumber*) custodyStorage
    custodyEncrypted: (NSNumber*) custodyEncrypted
    auditoryCipherDisable: (NSNumber*) auditoryCipherDisable
    auditoryDisable: (NSNumber*) auditoryDisable
    tsa: (MSConfigTsaDTO*) tsa
    signatureType: (NSString*) signatureType
    packaging: (NSString*) packaging
    policy: (MSConfigPolicyDTO*) policy
    validSignerIds: (NSArray*) validSignerIds
    signatureReason: (NSString*) signatureReason
    country: (NSString*) country
    stateOrProvince: (NSString*) stateOrProvince
    postalCode: (NSString*) postalCode
    city: (NSString*) city
    cadesConfig: (MSConfigCadesDTO*) cadesConfig
    padesConfig: (MSConfigPadesDTO*) padesConfig
    xadesConfig: (MSConfigXadesDTO*) xadesConfig
    operationId: (NSString*) operationId
    operationServer: (NSString*) operationServer
    timestampAlgorithm: (NSString*) timestampAlgorithm
    autoVerifyDisabled: (NSNumber*) autoVerifyDisabled
    autoVerifyError: (NSNumber*) autoVerifyError
    revocationRequestType: (NSString*) revocationRequestType
    
{
    _idReference = idReference;
    _signatureAlgorithm = signatureAlgorithm;
    _custodyCode = custodyCode;
    _custodyStorage = custodyStorage;
    _custodyEncrypted = custodyEncrypted;
    _auditoryCipherDisable = auditoryCipherDisable;
    _auditoryDisable = auditoryDisable;
    _tsa = tsa;
    _signatureType = signatureType;
    _packaging = packaging;
    _policy = policy;
    _validSignerIds = validSignerIds;
    _signatureReason = signatureReason;
    _country = country;
    _stateOrProvince = stateOrProvince;
    _postalCode = postalCode;
    _city = city;
    _cadesConfig = cadesConfig;
    _padesConfig = padesConfig;
    _xadesConfig = xadesConfig;
    _operationId = operationId;
    _operationServer = operationServer;
    _timestampAlgorithm = timestampAlgorithm;
    _autoVerifyDisabled = autoVerifyDisabled;
    _autoVerifyError = autoVerifyError;
    _revocationRequestType = revocationRequestType;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _idReference = dict[@"idReference"];
        
        _signatureAlgorithm = dict[@"signatureAlgorithm"];
        
        _custodyCode = dict[@"custodyCode"];
        
        _custodyStorage = dict[@"custodyStorage"];
        
        _custodyEncrypted = dict[@"custodyEncrypted"];
        
        _auditoryCipherDisable = dict[@"auditoryCipherDisable"];
        
        _auditoryDisable = dict[@"auditoryDisable"];
        
        
        
        id tsa_dict = dict[@"tsa"];
        
        if(tsa_dict != nil)
            _tsa = [[MSConfigTsaDTO  alloc]initWithValues:tsa_dict];
        
        
        _signatureType = dict[@"signatureType"];
        
        _packaging = dict[@"packaging"];
        
        
        
        id policy_dict = dict[@"policy"];
        
        if(policy_dict != nil)
            _policy = [[MSConfigPolicyDTO  alloc]initWithValues:policy_dict];
        
        
        _validSignerIds = dict[@"validSignerIds"];
        
        _signatureReason = dict[@"signatureReason"];
        
        _country = dict[@"country"];
        
        _stateOrProvince = dict[@"stateOrProvince"];
        
        _postalCode = dict[@"postalCode"];
        
        _city = dict[@"city"];
        
        
        
        id cadesConfig_dict = dict[@"cadesConfig"];
        
        if(cadesConfig_dict != nil)
            _cadesConfig = [[MSConfigCadesDTO  alloc]initWithValues:cadesConfig_dict];
        
        
        
        
        id padesConfig_dict = dict[@"padesConfig"];
        
        if(padesConfig_dict != nil)
            _padesConfig = [[MSConfigPadesDTO  alloc]initWithValues:padesConfig_dict];
        
        
        
        
        id xadesConfig_dict = dict[@"xadesConfig"];
        
        if(xadesConfig_dict != nil)
            _xadesConfig = [[MSConfigXadesDTO  alloc]initWithValues:xadesConfig_dict];
        
        
        _operationId = dict[@"operationId"];
        
        _operationServer = dict[@"operationServer"];
        
        _timestampAlgorithm = dict[@"timestampAlgorithm"];
        
        _autoVerifyDisabled = dict[@"autoVerifyDisabled"];
        
        _autoVerifyError = dict[@"autoVerifyError"];
        
        _revocationRequestType = dict[@"revocationRequestType"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_idReference != nil) dict[@"idReference"] = _idReference ;
        
    
    
            if(_signatureAlgorithm != nil) dict[@"signatureAlgorithm"] = _signatureAlgorithm ;
        
    
    
            if(_custodyCode != nil) dict[@"custodyCode"] = _custodyCode ;
        
    
    
            if(_custodyStorage != nil) dict[@"custodyStorage"] = _custodyStorage ;
        
    
    
            if(_custodyEncrypted != nil) dict[@"custodyEncrypted"] = _custodyEncrypted ;
        
    
    
            if(_auditoryCipherDisable != nil) dict[@"auditoryCipherDisable"] = _auditoryCipherDisable ;
        
    
    
            if(_auditoryDisable != nil) dict[@"auditoryDisable"] = _auditoryDisable ;
        
    
    
    if(_tsa != nil){
        if([_tsa isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_tsa count] ; i++ ) {
				MSConfigTsaDTO *tsa = [[MSConfigTsaDTO alloc]init];
				tsa = [(NSArray*)_tsa objectAtIndex:i];
                [array addObject:[(SWGObject*)tsa asDictionary]];
            }
            dict[@"tsa"] = array;
        }
        else if(_tsa && [_tsa isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_tsa toString];
            if(dateString){
                dict[@"tsa"] = dateString;
            }
        }
        else {
        
            if(_tsa != nil) dict[@"tsa"] = [(SWGObject*)_tsa asDictionary];
        
        }
    }
    
    
    
            if(_signatureType != nil) dict[@"signatureType"] = _signatureType ;
        
    
    
            if(_packaging != nil) dict[@"packaging"] = _packaging ;
        
    
    
    if(_policy != nil){
        if([_policy isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_policy count] ; i++ ) {
				MSConfigPolicyDTO *policy = [[MSConfigPolicyDTO alloc]init];
				policy = [(NSArray*)_policy objectAtIndex:i];
                [array addObject:[(SWGObject*)policy asDictionary]];
            }
            dict[@"policy"] = array;
        }
        else if(_policy && [_policy isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_policy toString];
            if(dateString){
                dict[@"policy"] = dateString;
            }
        }
        else {
        
            if(_policy != nil) dict[@"policy"] = [(SWGObject*)_policy asDictionary];
        
        }
    }
    
    
    
            if(_validSignerIds != nil) dict[@"validSignerIds"] = _validSignerIds ;
        
    
    
            if(_signatureReason != nil) dict[@"signatureReason"] = _signatureReason ;
        
    
    
            if(_country != nil) dict[@"country"] = _country ;
        
    
    
            if(_stateOrProvince != nil) dict[@"stateOrProvince"] = _stateOrProvince ;
        
    
    
            if(_postalCode != nil) dict[@"postalCode"] = _postalCode ;
        
    
    
            if(_city != nil) dict[@"city"] = _city ;
        
    
    
    if(_cadesConfig != nil){
        if([_cadesConfig isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_cadesConfig count] ; i++ ) {
				MSConfigCadesDTO *cadesConfig = [[MSConfigCadesDTO alloc]init];
				cadesConfig = [(NSArray*)_cadesConfig objectAtIndex:i];
                [array addObject:[(SWGObject*)cadesConfig asDictionary]];
            }
            dict[@"cadesConfig"] = array;
        }
        else if(_cadesConfig && [_cadesConfig isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_cadesConfig toString];
            if(dateString){
                dict[@"cadesConfig"] = dateString;
            }
        }
        else {
        
            if(_cadesConfig != nil) dict[@"cadesConfig"] = [(SWGObject*)_cadesConfig asDictionary];
        
        }
    }
    
    
    
    if(_padesConfig != nil){
        if([_padesConfig isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_padesConfig count] ; i++ ) {
				MSConfigPadesDTO *padesConfig = [[MSConfigPadesDTO alloc]init];
				padesConfig = [(NSArray*)_padesConfig objectAtIndex:i];
                [array addObject:[(SWGObject*)padesConfig asDictionary]];
            }
            dict[@"padesConfig"] = array;
        }
        else if(_padesConfig && [_padesConfig isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_padesConfig toString];
            if(dateString){
                dict[@"padesConfig"] = dateString;
            }
        }
        else {
        
            if(_padesConfig != nil) dict[@"padesConfig"] = [(SWGObject*)_padesConfig asDictionary];
        
        }
    }
    
    
    
    if(_xadesConfig != nil){
        if([_xadesConfig isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_xadesConfig count] ; i++ ) {
				MSConfigXadesDTO *xadesConfig = [[MSConfigXadesDTO alloc]init];
				xadesConfig = [(NSArray*)_xadesConfig objectAtIndex:i];
                [array addObject:[(SWGObject*)xadesConfig asDictionary]];
            }
            dict[@"xadesConfig"] = array;
        }
        else if(_xadesConfig && [_xadesConfig isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_xadesConfig toString];
            if(dateString){
                dict[@"xadesConfig"] = dateString;
            }
        }
        else {
        
            if(_xadesConfig != nil) dict[@"xadesConfig"] = [(SWGObject*)_xadesConfig asDictionary];
        
        }
    }
    
    
    
            if(_operationId != nil) dict[@"operationId"] = _operationId ;
        
    
    
            if(_operationServer != nil) dict[@"operationServer"] = _operationServer ;
        
    
    
            if(_timestampAlgorithm != nil) dict[@"timestampAlgorithm"] = _timestampAlgorithm ;
        
    
    
            if(_autoVerifyDisabled != nil) dict[@"autoVerifyDisabled"] = _autoVerifyDisabled ;
        
    
    
            if(_autoVerifyError != nil) dict[@"autoVerifyError"] = _autoVerifyError ;
        
    
    
            if(_revocationRequestType != nil) dict[@"revocationRequestType"] = _revocationRequestType ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

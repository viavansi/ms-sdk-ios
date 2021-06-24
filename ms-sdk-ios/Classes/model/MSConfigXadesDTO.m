#import "SWGDate.h"
#import "MSConfigXadesDTO.h"

@implementation MSConfigXadesDTO

@synthesize signedInfoCanonicalizationMethod = _signedInfoCanonicalizationMethod;
@synthesize signedPropertiesCanonicalizationMethod = _signedPropertiesCanonicalizationMethod;
@synthesize trustAnchorBPPolicy = _trustAnchorBPPolicy;
@synthesize claimedSignerRoles = _claimedSignerRoles;
@synthesize commitmentTypeIndication = _commitmentTypeIndication;
@synthesize transformAlgorithms = _transformAlgorithms;
@synthesize dssReferenceUri = _dssReferenceUri;
@synthesize useSigningCertificateV2 = _useSigningCertificateV2;
@synthesize toCounterSignSignatureValueId = _toCounterSignSignatureValueId;
@synthesize xpathLocationString = _xpathLocationString;

-(id)signedInfoCanonicalizationMethod: (NSString*) signedInfoCanonicalizationMethod
    signedPropertiesCanonicalizationMethod: (NSString*) signedPropertiesCanonicalizationMethod
    trustAnchorBPPolicy: (NSNumber*) trustAnchorBPPolicy
    claimedSignerRoles: (NSArray*) claimedSignerRoles
    commitmentTypeIndication: (NSArray*) commitmentTypeIndication
    transformAlgorithms: (NSArray*) transformAlgorithms
    dssReferenceUri: (NSString*) dssReferenceUri
    useSigningCertificateV2: (NSNumber*) useSigningCertificateV2
    toCounterSignSignatureValueId: (NSString*) toCounterSignSignatureValueId
    xpathLocationString: (NSString*) xpathLocationString
    
{
    _signedInfoCanonicalizationMethod = signedInfoCanonicalizationMethod;
    _signedPropertiesCanonicalizationMethod = signedPropertiesCanonicalizationMethod;
    _trustAnchorBPPolicy = trustAnchorBPPolicy;
    _claimedSignerRoles = claimedSignerRoles;
    _commitmentTypeIndication = commitmentTypeIndication;
    _transformAlgorithms = transformAlgorithms;
    _dssReferenceUri = dssReferenceUri;
    _useSigningCertificateV2 = useSigningCertificateV2;
    _toCounterSignSignatureValueId = toCounterSignSignatureValueId;
    _xpathLocationString = xpathLocationString;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _signedInfoCanonicalizationMethod = dict[@"signedInfoCanonicalizationMethod"];
        
        _signedPropertiesCanonicalizationMethod = dict[@"signedPropertiesCanonicalizationMethod"];
        
        _trustAnchorBPPolicy = dict[@"trustAnchorBPPolicy"];
        
        _claimedSignerRoles = dict[@"claimedSignerRoles"];
        
        _commitmentTypeIndication = dict[@"commitmentTypeIndication"];
        
        _transformAlgorithms = dict[@"transformAlgorithms"];
        
        _dssReferenceUri = dict[@"dssReferenceUri"];
        
        _useSigningCertificateV2 = dict[@"useSigningCertificateV2"];
        
        _toCounterSignSignatureValueId = dict[@"toCounterSignSignatureValueId"];
        
        _xpathLocationString = dict[@"xpathLocationString"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_signedInfoCanonicalizationMethod != nil) dict[@"signedInfoCanonicalizationMethod"] = _signedInfoCanonicalizationMethod ;
        
    
    
            if(_signedPropertiesCanonicalizationMethod != nil) dict[@"signedPropertiesCanonicalizationMethod"] = _signedPropertiesCanonicalizationMethod ;
        
    
    
            if(_trustAnchorBPPolicy != nil) dict[@"trustAnchorBPPolicy"] = _trustAnchorBPPolicy ;
        
    
    
            if(_claimedSignerRoles != nil) dict[@"claimedSignerRoles"] = _claimedSignerRoles ;
        
    
    
            if(_commitmentTypeIndication != nil) dict[@"commitmentTypeIndication"] = _commitmentTypeIndication ;
        
    
    
            if(_transformAlgorithms != nil) dict[@"transformAlgorithms"] = _transformAlgorithms ;
        
    
    
            if(_dssReferenceUri != nil) dict[@"dssReferenceUri"] = _dssReferenceUri ;
        
    
    
            if(_useSigningCertificateV2 != nil) dict[@"useSigningCertificateV2"] = _useSigningCertificateV2 ;
        
    
    
            if(_toCounterSignSignatureValueId != nil) dict[@"toCounterSignSignatureValueId"] = _toCounterSignSignatureValueId ;
        
    
    
            if(_xpathLocationString != nil) dict[@"xpathLocationString"] = _xpathLocationString ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

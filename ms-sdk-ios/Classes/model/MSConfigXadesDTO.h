#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSConfigXadesDTO : SWGObject

@property(nonatomic) NSString* signedInfoCanonicalizationMethod;  
@property(nonatomic) NSString* signedPropertiesCanonicalizationMethod;  
@property(nonatomic) NSNumber* trustAnchorBPPolicy;  
@property(nonatomic) NSArray* claimedSignerRoles;  
@property(nonatomic) NSArray* commitmentTypeIndication;  
@property(nonatomic) NSArray* transformAlgorithms;  
@property(nonatomic) NSString* dssReferenceUri;  
@property(nonatomic) NSNumber* useSigningCertificateV2;  
@property(nonatomic) NSString* toCounterSignSignatureValueId;  
@property(nonatomic) NSString* xpathLocationString;  
- (id) signedInfoCanonicalizationMethod: (NSString*) signedInfoCanonicalizationMethod     
    signedPropertiesCanonicalizationMethod: (NSString*) signedPropertiesCanonicalizationMethod     
    trustAnchorBPPolicy: (NSNumber*) trustAnchorBPPolicy     
    claimedSignerRoles: (NSArray*) claimedSignerRoles     
    commitmentTypeIndication: (NSArray*) commitmentTypeIndication     
    transformAlgorithms: (NSArray*) transformAlgorithms     
    dssReferenceUri: (NSString*) dssReferenceUri     
    useSigningCertificateV2: (NSNumber*) useSigningCertificateV2     
    toCounterSignSignatureValueId: (NSString*) toCounterSignSignatureValueId     
    xpathLocationString: (NSString*) xpathLocationString;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSConfigPolicyDTO.h"
#import "MSConfigTsaDTO.h"
#import "MSConfigXadesDTO.h"
#import "MSConfigPadesDTO.h"
#import "MSConfigCadesDTO.h"


@interface MSConfigSignatureDTO : SWGObject

@property(nonatomic) NSString* idReference;  
@property(nonatomic) NSString* signatureAlgorithm;  
@property(nonatomic) NSString* custodyCode;  
@property(nonatomic) NSNumber* custodyStorage;  
@property(nonatomic) NSNumber* custodyEncrypted;  
@property(nonatomic) NSNumber* auditoryCipherDisable;  
@property(nonatomic) NSNumber* auditoryDisable;  
@property(nonatomic) MSConfigTsaDTO* tsa;  
@property(nonatomic) NSString* signatureType;  
@property(nonatomic) NSString* packaging;  
@property(nonatomic) MSConfigPolicyDTO* policy;  
@property(nonatomic) NSArray* validSignerIds;  
@property(nonatomic) NSString* signatureReason;  
@property(nonatomic) NSString* country;  
@property(nonatomic) NSString* stateOrProvince;  
@property(nonatomic) NSString* postalCode;  
@property(nonatomic) NSString* city;  
@property(nonatomic) MSConfigCadesDTO* cadesConfig;  
@property(nonatomic) MSConfigPadesDTO* padesConfig;  
@property(nonatomic) MSConfigXadesDTO* xadesConfig;  
@property(nonatomic) NSString* operationId;  
@property(nonatomic) NSString* operationServer;  
@property(nonatomic) NSString* timestampAlgorithm;  
@property(nonatomic) NSNumber* autoVerifyDisabled;  
@property(nonatomic) NSString* revocationRequestType;  
- (id) idReference: (NSString*) idReference     
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
    revocationRequestType: (NSString*) revocationRequestType;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

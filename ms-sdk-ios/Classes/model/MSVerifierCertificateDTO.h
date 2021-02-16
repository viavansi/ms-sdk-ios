#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSVerifierKeyUsageDTO.h"
#import "MSVerifierDTO.h"
#import "MSVerifierOidDTO.h"
#import "MSVerifierCertificateDTO.h"


@interface MSVerifierCertificateDTO : SWGObject

@property(nonatomic) NSString* certX509Base64;  
@property(nonatomic) NSString* subject;  
@property(nonatomic) NSString* issuer;  
@property(nonatomic) SWGDate* notafter;  
@property(nonatomic) SWGDate* notbefore;  
@property(nonatomic) NSString* signAlgName;  
@property(nonatomic) NSString* signAlgOID;  
@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* version;  
@property(nonatomic) NSString* serialNumber;  
@property(nonatomic) NSString* policyIdentifier;  
@property(nonatomic) NSNumber* expired;  
@property(nonatomic) NSNumber* expiredAfterSigningDate;  
@property(nonatomic) NSNumber* selfSigned;  
@property(nonatomic) NSNumber* trusted;  
@property(nonatomic) NSString* trustedSource;  
@property(nonatomic) NSNumber* valid;  
@property(nonatomic) MSVerifierKeyUsageDTO* keyUsage;  
@property(nonatomic) NSArray* oids;  
@property(nonatomic) MSVerifierDTO* validation;  
@property(nonatomic) MSVerifierCertificateDTO* issuerCert;  
- (id) certX509Base64: (NSString*) certX509Base64     
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
    issuerCert: (MSVerifierCertificateDTO*) issuerCert;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

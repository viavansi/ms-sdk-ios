#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPrincipal.h"
#import "SWGDate.h"
#import "MSPublicKey.h"
#import "MSX500Principal.h"


@interface MSX509Certificate : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) MSX500Principal* subjectX500Principal;  
@property(nonatomic) MSX500Principal* issuerX500Principal;  
@property(nonatomic) MSPrincipal* issuerDN;  
@property(nonatomic) MSPrincipal* subjectDN;  
@property(nonatomic) NSArray* signature;  
@property(nonatomic) NSNumber* basicConstraints;  
@property(nonatomic) NSString* sigAlgName;  
@property(nonatomic) NSArray* keyUsage;  
@property(nonatomic) NSArray* extendedKeyUsage;  
@property(nonatomic) NSArray* tbscertificate;  
@property(nonatomic) NSArray* issuerAlternativeNames;  
@property(nonatomic) NSArray* issuerUniqueID;  
@property(nonatomic) NSString* sigAlgOID;  
@property(nonatomic) NSArray* sigAlgParams;  
@property(nonatomic) NSArray* subjectAlternativeNames;  
@property(nonatomic) NSArray* subjectUniqueID;  
@property(nonatomic) SWGDate* notAfter;  
@property(nonatomic) NSNumber* serialNumber;  
@property(nonatomic) SWGDate* notBefore;  
@property(nonatomic) NSNumber* version;  
@property(nonatomic) NSArray* criticalExtensionOIDs;  
@property(nonatomic) NSArray* nonCriticalExtensionOIDs;  
@property(nonatomic) NSArray* encoded;  
@property(nonatomic) MSPublicKey* publicKey;  
- (id) type: (NSString*) type     
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
    publicKey: (MSPublicKey*) publicKey;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

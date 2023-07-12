#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSVerifierCertificateDTO.h"
#import "MSVerifierTimeStampDTO.h"


@interface MSVerifierSignatureDTO : SWGObject

@property(nonatomic) NSString* format;  
@property(nonatomic) NSString* requestedFormat;  
@property(nonatomic) NSString* encryptionAlgorithm;  
@property(nonatomic) NSString* digestAlgorithm;  
@property(nonatomic) NSString* level;  
@property(nonatomic) SWGDate* signingTime;  
@property(nonatomic) NSNumber* validationDisabled;  
@property(nonatomic) NSString* validationStatus;  
@property(nonatomic) NSString* indication;  
@property(nonatomic) NSString* subIndication;  
@property(nonatomic) NSString* policyId;  
@property(nonatomic) NSString* errorMessage;  
@property(nonatomic) NSString* signedBy;  
@property(nonatomic) NSString* issuerBy;  
@property(nonatomic) NSString* code;  
@property(nonatomic) MSVerifierCertificateDTO* certificate;  
@property(nonatomic) NSArray* timeStamps;  
@property(nonatomic) NSNumber* unsignedChanges;  
@property(nonatomic) NSString* reason;  
@property(nonatomic) NSString* location;  
- (id) format: (NSString*) format     
    requestedFormat: (NSString*) requestedFormat     
    encryptionAlgorithm: (NSString*) encryptionAlgorithm     
    digestAlgorithm: (NSString*) digestAlgorithm     
    level: (NSString*) level     
    signingTime: (SWGDate*) signingTime     
    validationDisabled: (NSNumber*) validationDisabled     
    validationStatus: (NSString*) validationStatus     
    indication: (NSString*) indication     
    subIndication: (NSString*) subIndication     
    policyId: (NSString*) policyId     
    errorMessage: (NSString*) errorMessage     
    signedBy: (NSString*) signedBy     
    issuerBy: (NSString*) issuerBy     
    code: (NSString*) code     
    certificate: (MSVerifierCertificateDTO*) certificate     
    timeStamps: (NSArray*) timeStamps     
    unsignedChanges: (NSNumber*) unsignedChanges     
    reason: (NSString*) reason     
    location: (NSString*) location;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

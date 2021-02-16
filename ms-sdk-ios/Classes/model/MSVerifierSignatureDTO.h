#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSVerifierCertificateDTO.h"
#import "MSVerifierTimeStampDTO.h"


@interface MSVerifierSignatureDTO : SWGObject

@property(nonatomic) NSString* format;  
@property(nonatomic) NSString* encryptionAlgorithm;  
@property(nonatomic) NSString* digestAlgorithm;  
@property(nonatomic) NSString* level;  
@property(nonatomic) SWGDate* signingTime;  
@property(nonatomic) NSString* validationStatus;  
@property(nonatomic) NSString* indication;  
@property(nonatomic) NSString* subIndication;  
@property(nonatomic) NSString* policyId;  
@property(nonatomic) NSString* errorMessage;  
@property(nonatomic) NSString* signedBy;  
@property(nonatomic) NSString* code;  
@property(nonatomic) MSVerifierCertificateDTO* certificate;  
@property(nonatomic) NSArray* timeStamps;  
@property(nonatomic) NSNumber* unsignedChanges;  
- (id) format: (NSString*) format     
    encryptionAlgorithm: (NSString*) encryptionAlgorithm     
    digestAlgorithm: (NSString*) digestAlgorithm     
    level: (NSString*) level     
    signingTime: (SWGDate*) signingTime     
    validationStatus: (NSString*) validationStatus     
    indication: (NSString*) indication     
    subIndication: (NSString*) subIndication     
    policyId: (NSString*) policyId     
    errorMessage: (NSString*) errorMessage     
    signedBy: (NSString*) signedBy     
    code: (NSString*) code     
    certificate: (MSVerifierCertificateDTO*) certificate     
    timeStamps: (NSArray*) timeStamps     
    unsignedChanges: (NSNumber*) unsignedChanges;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

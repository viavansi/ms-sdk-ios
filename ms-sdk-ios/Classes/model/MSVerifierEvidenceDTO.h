#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSVerifierSignatureDTO.h"
#import "MSXMLEvidenceDTO.h"


@interface MSVerifierEvidenceDTO : SWGObject

@property(nonatomic) NSString* validationStatus;  
@property(nonatomic) MSXMLEvidenceDTO* evidenceInfo;  
@property(nonatomic) NSString* evidenceName;  
@property(nonatomic) MSVerifierSignatureDTO* signatureInfo;  
@property(nonatomic) NSArray* validationMessages;  
@property(nonatomic) NSArray* validationErrors;  
- (id) validationStatus: (NSString*) validationStatus     
    evidenceInfo: (MSXMLEvidenceDTO*) evidenceInfo     
    evidenceName: (NSString*) evidenceName     
    signatureInfo: (MSVerifierSignatureDTO*) signatureInfo     
    validationMessages: (NSArray*) validationMessages     
    validationErrors: (NSArray*) validationErrors;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSSignatureCodeDTO.h"
#import "MSVerifierSignatureDTO.h"
#import "MSVerifierEvidenceDTO.h"


@interface MSVerifierDocumentDTO : SWGObject

@property(nonatomic) MSSignatureCodeDTO* signatureCode;  
@property(nonatomic) SWGDate* validationTime;  
@property(nonatomic) NSNumber* signaturesCount;  
@property(nonatomic) NSNumber* validSignaturesCount;  
@property(nonatomic) NSNumber* evidencesCount;  
@property(nonatomic) NSNumber* validEvidencesCount;  
@property(nonatomic) NSArray* signatures;  
@property(nonatomic) NSArray* evidences;  
@property(nonatomic) NSArray* pagesHashes;  
@property(nonatomic) NSString* hashPdfContent;  
@property(nonatomic) NSString* hash;  
@property(nonatomic) NSString* lastSignatureCode;  
- (id) signatureCode: (MSSignatureCodeDTO*) signatureCode     
    validationTime: (SWGDate*) validationTime     
    signaturesCount: (NSNumber*) signaturesCount     
    validSignaturesCount: (NSNumber*) validSignaturesCount     
    evidencesCount: (NSNumber*) evidencesCount     
    validEvidencesCount: (NSNumber*) validEvidencesCount     
    signatures: (NSArray*) signatures     
    evidences: (NSArray*) evidences     
    pagesHashes: (NSArray*) pagesHashes     
    hashPdfContent: (NSString*) hashPdfContent     
    hash: (NSString*) hash     
    lastSignatureCode: (NSString*) lastSignatureCode;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

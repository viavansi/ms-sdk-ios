#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSVerifierCertificateDTO.h"


@interface MSVerifierTimeStampDTO : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* indication;  
@property(nonatomic) NSString* subIndication;  
@property(nonatomic) NSString* digestAlgo;  
@property(nonatomic) SWGDate* productionTime;  
@property(nonatomic) NSString* signedBy;  
@property(nonatomic) MSVerifierCertificateDTO* certificate;  
@property(nonatomic) NSString* validationStatus;  
@property(nonatomic) NSString* issuerBy;  
- (id) type: (NSString*) type     
    indication: (NSString*) indication     
    subIndication: (NSString*) subIndication     
    digestAlgo: (NSString*) digestAlgo     
    productionTime: (SWGDate*) productionTime     
    signedBy: (NSString*) signedBy     
    certificate: (MSVerifierCertificateDTO*) certificate     
    validationStatus: (NSString*) validationStatus     
    issuerBy: (NSString*) issuerBy;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

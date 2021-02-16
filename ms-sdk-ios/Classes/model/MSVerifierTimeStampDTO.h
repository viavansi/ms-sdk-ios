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
@property(nonatomic) MSVerifierCertificateDTO* certificate;  
- (id) type: (NSString*) type     
    indication: (NSString*) indication     
    subIndication: (NSString*) subIndication     
    digestAlgo: (NSString*) digestAlgo     
    productionTime: (SWGDate*) productionTime     
    certificate: (MSVerifierCertificateDTO*) certificate;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

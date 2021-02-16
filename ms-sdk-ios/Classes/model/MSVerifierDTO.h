#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSVerifierCrlDTO.h"
#import "SWGDate.h"
#import "MSVerifierOcspDTO.h"


@interface MSVerifierDTO : SWGObject

@property(nonatomic) NSNumber* validRevocationSource;  
@property(nonatomic) NSString* method;  
@property(nonatomic) MSVerifierOcspDTO* ocspResponse;  
@property(nonatomic) MSVerifierCrlDTO* crlResponse;  
@property(nonatomic) SWGDate* revocationDate;  
@property(nonatomic) NSString* revocationReason;  
@property(nonatomic) NSString* url;  
@property(nonatomic) NSArray* info;  
@property(nonatomic) NSNumber* revoked;  
- (id) validRevocationSource: (NSNumber*) validRevocationSource     
    method: (NSString*) method     
    ocspResponse: (MSVerifierOcspDTO*) ocspResponse     
    crlResponse: (MSVerifierCrlDTO*) crlResponse     
    revocationDate: (SWGDate*) revocationDate     
    revocationReason: (NSString*) revocationReason     
    url: (NSString*) url     
    info: (NSArray*) info     
    revoked: (NSNumber*) revoked;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

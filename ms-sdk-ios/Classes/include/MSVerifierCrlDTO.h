#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface MSVerifierCrlDTO : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* version;  
@property(nonatomic) NSString* issuer;  
@property(nonatomic) NSString* signingAlgorithm;  
@property(nonatomic) NSString* signingOID;  
@property(nonatomic) SWGDate* nextUpdate;  
@property(nonatomic) SWGDate* thisUpdate;  
- (id) type: (NSString*) type     
    version: (NSString*) version     
    issuer: (NSString*) issuer     
    signingAlgorithm: (NSString*) signingAlgorithm     
    signingOID: (NSString*) signingOID     
    nextUpdate: (SWGDate*) nextUpdate     
    thisUpdate: (SWGDate*) thisUpdate;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSVerifierKeyUsageDTO : SWGObject

@property(nonatomic) NSNumber* digitalSignature;  
@property(nonatomic) NSNumber* nonRepudiation;  
@property(nonatomic) NSNumber* keyEncipherment;  
@property(nonatomic) NSNumber* dataEncipherment;  
@property(nonatomic) NSNumber* keyAgreement;  
@property(nonatomic) NSNumber* keyCertSign;  
@property(nonatomic) NSNumber* iscRLSign;  
@property(nonatomic) NSNumber* encipherOnly;  
@property(nonatomic) NSNumber* decipherOnly;  
- (id) digitalSignature: (NSNumber*) digitalSignature     
    nonRepudiation: (NSNumber*) nonRepudiation     
    keyEncipherment: (NSNumber*) keyEncipherment     
    dataEncipherment: (NSNumber*) dataEncipherment     
    keyAgreement: (NSNumber*) keyAgreement     
    keyCertSign: (NSNumber*) keyCertSign     
    iscRLSign: (NSNumber*) iscRLSign     
    encipherOnly: (NSNumber*) encipherOnly     
    decipherOnly: (NSNumber*) decipherOnly;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

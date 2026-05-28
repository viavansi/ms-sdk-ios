#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPrivateKey.h"
#import "MSX509Certificate.h"
#import "MSCertificate.h"


@interface MSCertificateDTO : SWGObject

@property(nonatomic) MSPrivateKey* privateKey;  
@property(nonatomic) NSArray* chain;  
@property(nonatomic) MSX509Certificate* certificate;  
@property(nonatomic) NSString* provider;  
- (id) privateKey: (MSPrivateKey*) privateKey     
    chain: (NSArray*) chain     
    certificate: (MSX509Certificate*) certificate     
    provider: (NSString*) provider;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

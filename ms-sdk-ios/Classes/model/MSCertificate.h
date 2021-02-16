#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPublicKey.h"


@interface MSCertificate : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSArray* encoded;  
@property(nonatomic) MSPublicKey* publicKey;  
- (id) type: (NSString*) type     
    encoded: (NSArray*) encoded     
    publicKey: (MSPublicKey*) publicKey;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSPrepareSignature : SWGObject

@property(nonatomic) NSString* messageCode;  /* (since 3.5.0) message code  */
@property(nonatomic) NSString* signatureCode;  /* (since 3.5.0) signature code  */
@property(nonatomic) NSString* publicKey;  /* (since 3.5.0) public key  */
- (id) messageCode: (NSString*) messageCode     
    signatureCode: (NSString*) signatureCode     
    publicKey: (NSString*) publicKey;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

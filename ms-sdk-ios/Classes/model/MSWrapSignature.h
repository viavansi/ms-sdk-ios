#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSWrapSignature : SWGObject

@property(nonatomic) NSString* signatureCode;  /* (since 3.5.0) signature code  */
@property(nonatomic) NSString* publicKey;  /* (since 3.5.0) public Key  */
@property(nonatomic) NSString* messageCode;  /* (since 3.5.0) message code  */
@property(nonatomic) NSString* signedDataBase64;  /* (since 3.5.0) base 64 hash  */
- (id) signatureCode: (NSString*) signatureCode     
    publicKey: (NSString*) publicKey     
    messageCode: (NSString*) messageCode     
    signedDataBase64: (NSString*) signedDataBase64;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

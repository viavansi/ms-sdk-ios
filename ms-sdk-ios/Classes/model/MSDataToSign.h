#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSDataToSign : SWGObject

@property(nonatomic) NSString* algorithm;  /* (since 3.5.0) signature algorith  */
@property(nonatomic) NSString* hash;  /* (since 3.5.0) hash to sign  */
@property(nonatomic) NSString* idSign;  
@property(nonatomic) NSString* messageCode;  /* (since 3.7.35) message code  */
@property(nonatomic) NSString* signatureCode;  
- (id) algorithm: (NSString*) algorithm     
    hash: (NSString*) hash     
    idSign: (NSString*) idSign     
    messageCode: (NSString*) messageCode     
    signatureCode: (NSString*) signatureCode;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

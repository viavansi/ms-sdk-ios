#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPrepareSignature.h"


@interface MSPrepareSignatureBatch : SWGObject

@property(nonatomic) NSArray* prepareSignatures;  /* (since 3.7.10) prepare signature list  */
@property(nonatomic) NSString* recipientKey;  /* (since 3.7.35) recipientKey  */
@property(nonatomic) NSString* publicKey;  /* (since 3.7.35) publicKey  */
- (id) prepareSignatures: (NSArray*) prepareSignatures     
    recipientKey: (NSString*) recipientKey     
    publicKey: (NSString*) publicKey;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

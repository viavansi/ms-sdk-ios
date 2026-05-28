#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSWrapSignature.h"


@interface MSWrapSignatureBatch : SWGObject

@property(nonatomic) NSArray* wrapSignatures;  /* (since 3.7.10) wrap signature list  */
@property(nonatomic) NSString* recipientKey;  /* (since 3.7.35) recipientKey  */
@property(nonatomic) NSString* publicKey;  /* (since 3.7.35) publicKey  */
- (id) wrapSignatures: (NSArray*) wrapSignatures     
    recipientKey: (NSString*) recipientKey     
    publicKey: (NSString*) publicKey;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

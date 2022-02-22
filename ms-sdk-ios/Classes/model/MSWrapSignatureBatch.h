#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSWrapSignature.h"


@interface MSWrapSignatureBatch : SWGObject

@property(nonatomic) NSArray* wrapSignatures;  /* (since 3.7.10) wrap signature list  */
@property(nonatomic) NSString* recipientKey;  /* (since 3.7.35) recipientKey  */
- (id) wrapSignatures: (NSArray*) wrapSignatures     
    recipientKey: (NSString*) recipientKey;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

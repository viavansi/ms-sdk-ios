#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSWrapSignature.h"


@interface MSWrapSignatureBatch : SWGObject

@property(nonatomic) NSArray* wrapSignatures;  /* (since 3.7.10) wrap signature list  */
- (id) wrapSignatures: (NSArray*) wrapSignatures;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

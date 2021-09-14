#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPrepareSignature.h"


@interface MSPrepareSignatureBatch : SWGObject

@property(nonatomic) NSArray* prepareSignatures;  /* (since 3.7.10) prepare signature list  */
- (id) prepareSignatures: (NSArray*) prepareSignatures;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

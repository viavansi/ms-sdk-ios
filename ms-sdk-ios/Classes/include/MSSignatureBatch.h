#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSSignature.h"


@interface MSSignatureBatch : SWGObject

@property(nonatomic) NSArray* signatures;  
- (id) signatures: (NSArray*) signatures;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

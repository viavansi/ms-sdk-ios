#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSConfigCadesDTO : SWGObject

@property(nonatomic) NSString* toCounterSignSignatureValueId;  
- (id) toCounterSignSignatureValueId: (NSString*) toCounterSignSignatureValueId;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

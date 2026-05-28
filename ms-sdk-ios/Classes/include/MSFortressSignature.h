#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSFortressSignature : SWGObject

@property(nonatomic) NSString* link;  
- (id) link: (NSString*) link;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

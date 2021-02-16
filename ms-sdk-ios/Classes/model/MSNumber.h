#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSNumber : SWGObject 

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSComposeToken : SWGObject

@property(nonatomic) NSString* link;  
- (id) link: (NSString*) link;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSJSMatiAge : SWGObject

@property(nonatomic) NSString* data;  
- (id) data: (NSString*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

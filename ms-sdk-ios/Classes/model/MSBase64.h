#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSBase64 : SWGObject

@property(nonatomic) NSString* base64;  
- (id) base64: (NSString*) base64;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface Rectangle : SWGObject

@property(nonatomic) NSNumber* x;  
@property(nonatomic) NSNumber* y;  
@property(nonatomic) NSNumber* width;  
@property(nonatomic) NSNumber* height;  
- (id) x: (NSNumber*) x     
    y: (NSNumber*) y     
    width: (NSNumber*) width     
    height: (NSNumber*) height;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

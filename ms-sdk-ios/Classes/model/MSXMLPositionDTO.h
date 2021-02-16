#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSXMLPositionDTO : SWGObject

@property(nonatomic) NSNumber* page;  
@property(nonatomic) NSNumber* x;  
@property(nonatomic) NSNumber* y;  
@property(nonatomic) NSNumber* width;  
@property(nonatomic) NSNumber* height;  
- (id) page: (NSNumber*) page     
    x: (NSNumber*) x     
    y: (NSNumber*) y     
    width: (NSNumber*) width     
    height: (NSNumber*) height;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSEvidencePoint : SWGObject

@property(nonatomic) NSNumber* x;  
@property(nonatomic) NSNumber* y;  
@property(nonatomic) NSNumber* pressure;  
@property(nonatomic) NSNumber* milliseconds;  
- (id) x: (NSNumber*) x     
    y: (NSNumber*) y     
    pressure: (NSNumber*) pressure     
    milliseconds: (NSNumber*) milliseconds;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

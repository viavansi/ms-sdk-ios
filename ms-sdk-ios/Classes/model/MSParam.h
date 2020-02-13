#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSParam : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSString* value;  
@property(nonatomic) NSNumber* internal;  
- (id) key: (NSString*) key     
    value: (NSString*) value     
    internal: (NSNumber*) internal;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

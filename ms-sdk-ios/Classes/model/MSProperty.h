#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSProperty : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSString* value;  
@property(nonatomic) NSNumber* admin;  
- (id) key: (NSString*) key     
    value: (NSString*) value     
    admin: (NSNumber*) admin;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSMailConfig : SWGObject

@property(nonatomic) NSNumber* required;  
@property(nonatomic) NSNumber* visible;  
@property(nonatomic) NSString* default_value;  
- (id) required: (NSNumber*) required     
    visible: (NSNumber*) visible     
    default_value: (NSString*) default_value;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

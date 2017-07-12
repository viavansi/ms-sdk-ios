#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSJSOcrFieldExtractionResult : SWGObject

@property(nonatomic) NSNumber* confidence;  
@property(nonatomic) NSString* key;  
@property(nonatomic) NSNumber* valid;  
@property(nonatomic) NSString* value;  
- (id) confidence: (NSNumber*) confidence     
    key: (NSString*) key     
    valid: (NSNumber*) valid     
    value: (NSString*) value;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

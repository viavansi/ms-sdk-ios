#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSJSOcrFieldExtractionResult : SWGObject

@property(nonatomic) NSNumber* confidence;  
@property(nonatomic) NSString* key;  
@property(nonatomic) NSNumber* valid;  
@property(nonatomic) NSString* value;  
@property(nonatomic) NSString* title;  
- (id) confidence: (NSNumber*) confidence     
    key: (NSString*) key     
    valid: (NSNumber*) valid     
    value: (NSString*) value     
    title: (NSString*) title;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

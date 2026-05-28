#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSFieldExtractionResultDerivedData.h"


@interface MSOcrFieldExtractionResult : SWGObject

@property(nonatomic) NSArray* derived;  
@property(nonatomic) NSNumber* confidence;  
@property(nonatomic) NSString* key;  
@property(nonatomic) NSNumber* valid;  
@property(nonatomic) NSString* value;  
@property(nonatomic) NSString* title;  
- (id) derived: (NSArray*) derived     
    confidence: (NSNumber*) confidence     
    key: (NSString*) key     
    valid: (NSNumber*) valid     
    value: (NSString*) value     
    title: (NSString*) title;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

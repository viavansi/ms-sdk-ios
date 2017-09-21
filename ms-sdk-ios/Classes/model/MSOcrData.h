#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSJSOcrFieldExtractionResult.h"


@interface MSOcrData : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSNumber* version;  
@property(nonatomic) NSNumber* offline;  
@property(nonatomic) NSArray* result;  
- (id) key: (NSString*) key     
    version: (NSNumber*) version     
    offline: (NSNumber*) offline     
    result: (NSArray*) result;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

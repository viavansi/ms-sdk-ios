#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAuditoryMetadata : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSString* label;  
@property(nonatomic) NSString* value;  
- (id) key: (NSString*) key     
    label: (NSString*) label     
    value: (NSString*) value;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

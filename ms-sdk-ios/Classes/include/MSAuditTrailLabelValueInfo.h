#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAuditTrailLabelValueInfo : SWGObject

@property(nonatomic) NSString* label;  
@property(nonatomic) NSString* value;  
@property(nonatomic) NSString* type;  
- (id) label: (NSString*) label     
    value: (NSString*) value     
    type: (NSString*) type;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

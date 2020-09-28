#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAuditTrailLabelValueInfo : SWGObject

@property(nonatomic) NSString* label;  
@property(nonatomic) NSString* value;  
- (id) label: (NSString*) label     
    value: (NSString*) value;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

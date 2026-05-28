#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAuditTrailHighlightedItem.h"


@interface MSAuditTrailHighlightedBlock : SWGObject

@property(nonatomic) NSString* title;  
@property(nonatomic) NSArray* items;  
- (id) title: (NSString*) title     
    items: (NSArray*) items;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSMessageList.h"


@interface MSMessagePaginatedList : SWGObject

@property(nonatomic) NSNumber* total;  /* (since 3.4.10) total  */
@property(nonatomic) NSArray* elements;  /* (since 3.4.10) elements  */
- (id) total: (NSNumber*) total     
    elements: (NSArray*) elements;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

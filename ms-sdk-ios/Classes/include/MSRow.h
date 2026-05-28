#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSItem.h"


@interface MSRow : SWGObject

@property(nonatomic) NSArray* items;  
- (id) items: (NSArray*) items;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Item.h"


@interface Row : SWGObject

@property(nonatomic) NSArray* items;  
- (id) items: (NSArray*) items;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

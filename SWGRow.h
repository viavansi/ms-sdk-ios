#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGItem.h"

@interface SWGRow : SWGObject

@property(nonatomic) NSArray* items;  

- (id) items: (NSArray*) items;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


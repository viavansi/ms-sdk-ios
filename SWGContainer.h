#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGRow.h"

@interface SWGContainer : SWGObject

@property(nonatomic) NSString* name;  

@property(nonatomic) NSString* title;  

@property(nonatomic) NSArray* rows;  

- (id) name: (NSString*) name
     title: (NSString*) title
     rows: (NSArray*) rows;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGRectangle.h"

@interface SWGPosition : SWGObject

@property(nonatomic) SWGRectangle* rectangle;  

@property(nonatomic) NSNumber* page;  

- (id) rectangle: (SWGRectangle*) rectangle
     page: (NSNumber*) page;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


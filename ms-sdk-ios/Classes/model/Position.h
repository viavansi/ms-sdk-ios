#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Rectangle.h"


@interface Position : SWGObject

@property(nonatomic) Rectangle* rectangle;  
@property(nonatomic) NSNumber* page;  
- (id) rectangle: (Rectangle*) rectangle     
    page: (NSNumber*) page;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

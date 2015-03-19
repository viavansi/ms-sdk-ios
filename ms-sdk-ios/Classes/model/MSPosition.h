#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSRectangle.h"


@interface MSPosition : SWGObject

@property(nonatomic) MSRectangle* rectangle;  
@property(nonatomic) NSNumber* page;  
- (id) rectangle: (MSRectangle*) rectangle     
    page: (NSNumber*) page;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

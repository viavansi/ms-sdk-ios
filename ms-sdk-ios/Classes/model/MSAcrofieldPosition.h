#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSRectangle.h"


@interface MSAcrofieldPosition : SWGObject

@property(nonatomic) NSString* _id;  
@property(nonatomic) MSRectangle* rectangle;  
@property(nonatomic) NSNumber* page;  
- (id) _id: (NSString*) _id     
    rectangle: (MSRectangle*) rectangle     
    page: (NSNumber*) page;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSRectangle.h"


@interface MSAcrofieldPosition : SWGObject

@property(nonatomic) NSString* _id;  
@property(nonatomic) NSNumber* page;  
@property(nonatomic) MSRectangle* rectangle;  
- (id) _id: (NSString*) _id     
    page: (NSNumber*) page     
    rectangle: (MSRectangle*) rectangle;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSRectangle.h"


@interface MSPosition : SWGObject

@property(nonatomic) MSRectangle* rectangle;  
@property(nonatomic) NSNumber* page;  
@property(nonatomic) NSString* positionMatchId;  
@property(nonatomic) NSString* _id;  
- (id) rectangle: (MSRectangle*) rectangle     
    page: (NSNumber*) page     
    positionMatchId: (NSString*) positionMatchId     
    _id: (NSString*) _id;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

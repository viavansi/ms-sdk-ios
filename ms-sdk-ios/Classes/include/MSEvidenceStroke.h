#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSEvidencePoint.h"


@interface MSEvidenceStroke : SWGObject

@property(nonatomic) NSArray* points;  
- (id) points: (NSArray*) points;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

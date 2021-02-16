#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAuditory.h"


@interface MSAuditoryActions : SWGObject

@property(nonatomic) NSArray* actions;  
- (id) actions: (NSArray*) actions;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

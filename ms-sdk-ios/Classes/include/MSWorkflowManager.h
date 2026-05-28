#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSWorkflowConfig.h"


@interface MSWorkflowManager : SWGObject

@property(nonatomic) NSArray* workflows;  
- (id) workflows: (NSArray*) workflows;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

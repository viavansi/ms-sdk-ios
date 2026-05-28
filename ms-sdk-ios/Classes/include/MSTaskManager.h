#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSWorkflowConfig.h"
#import "MSTask.h"


@interface MSTaskManager : SWGObject

@property(nonatomic) NSArray* tasks;  
@property(nonatomic) NSArray* workflows;  
- (id) tasks: (NSArray*) tasks     
    workflows: (NSArray*) workflows;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

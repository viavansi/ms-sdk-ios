#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSWorkflowConfig.h"
#import "MSWorkflowTask.h"


@interface MSWorkflowManager : SWGObject

@property(nonatomic) NSArray* workflows;  
@property(nonatomic) NSArray* tasks;  
- (id) workflows: (NSArray*) workflows     
    tasks: (NSArray*) tasks;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

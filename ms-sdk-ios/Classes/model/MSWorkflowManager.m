#import "SWGDate.h"
#import "MSWorkflowManager.h"

@implementation MSWorkflowManager

@synthesize workflows = _workflows;
@synthesize tasks = _tasks;

-(id)workflows: (NSArray*) workflows
    tasks: (NSArray*) tasks
    
{
    _workflows = workflows;
    _tasks = tasks;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id workflows_dict = dict[@"workflows"];
        
        if([workflows_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)workflows_dict count]];
            if([(NSArray*)workflows_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)workflows_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[workflows_dict objectAtIndex:i]];
                    MSWorkflowConfig* d = [[MSWorkflowConfig alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _workflows = [[NSArray alloc] initWithArray:objs];
            }
            else
                _workflows = [[NSArray alloc] init];
        }
        else {
            _workflows = [[NSArray alloc] init];
        }
        
        
        
        
        id tasks_dict = dict[@"tasks"];
        
        if([tasks_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)tasks_dict count]];
            if([(NSArray*)tasks_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)tasks_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[tasks_dict objectAtIndex:i]];
                    MSWorkflowTask* d = [[MSWorkflowTask alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _tasks = [[NSArray alloc] initWithArray:objs];
            }
            else
                _tasks = [[NSArray alloc] init];
        }
        else {
            _tasks = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_workflows != nil){
        if([_workflows isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_workflows count] ; i++ ) {
				MSWorkflowConfig *workflows = [[MSWorkflowConfig alloc]init];
				workflows = [(NSArray*)_workflows objectAtIndex:i];
                [array addObject:[(SWGObject*)workflows asDictionary]];
            }
            dict[@"workflows"] = array;
        }
        else if(_workflows && [_workflows isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_workflows toString];
            if(dateString){
                dict[@"workflows"] = dateString;
            }
        }
        else {
        
            if(_workflows != nil) dict[@"workflows"] = [(SWGObject*)_workflows asDictionary];
        
        }
    }
    
    
    
    if(_tasks != nil){
        if([_tasks isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_tasks count] ; i++ ) {
				MSWorkflowTask *tasks = [[MSWorkflowTask alloc]init];
				tasks = [(NSArray*)_tasks objectAtIndex:i];
                [array addObject:[(SWGObject*)tasks asDictionary]];
            }
            dict[@"tasks"] = array;
        }
        else if(_tasks && [_tasks isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_tasks toString];
            if(dateString){
                dict[@"tasks"] = dateString;
            }
        }
        else {
        
            if(_tasks != nil) dict[@"tasks"] = [(SWGObject*)_tasks asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

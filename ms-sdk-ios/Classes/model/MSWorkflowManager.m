#import "SWGDate.h"
#import "MSWorkflowManager.h"

@implementation MSWorkflowManager

@synthesize workflows = _workflows;

-(id)workflows: (NSArray*) workflows
    
{
    _workflows = workflows;
    

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
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

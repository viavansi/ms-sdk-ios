#import "SWGDate.h"
#import "MSEventHistory.h"

@implementation MSEventHistory

@synthesize start = _start;
@synthesize ends = _ends;
@synthesize taskName = _taskName;
@synthesize order = _order;
@synthesize error = _error;

-(id)start: (NSNumber*) start
    ends: (NSNumber*) ends
    taskName: (NSString*) taskName
    order: (NSNumber*) order
    error: (MSErrorResponse*) error
    
{
    _start = start;
    _ends = ends;
    _taskName = taskName;
    _order = order;
    _error = error;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _start = dict[@"start"];
        
        _ends = dict[@"ends"];
        
        _taskName = dict[@"taskName"];
        
        _order = dict[@"order"];
        
        
        
        id error_dict = dict[@"error"];
        
        if(error_dict != nil)
            _error = [[MSErrorResponse  alloc]initWithValues:error_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_start != nil) dict[@"start"] = _start ;
        
    
    
            if(_ends != nil) dict[@"ends"] = _ends ;
        
    
    
            if(_taskName != nil) dict[@"taskName"] = _taskName ;
        
    
    
            if(_order != nil) dict[@"order"] = _order ;
        
    
    
    if(_error != nil){
        if([_error isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_error count] ; i++ ) {
				MSErrorResponse *error = [[MSErrorResponse alloc]init];
				error = [(NSArray*)_error objectAtIndex:i];
                [array addObject:[(SWGObject*)error asDictionary]];
            }
            dict[@"error"] = array;
        }
        else if(_error && [_error isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_error toString];
            if(dateString){
                dict[@"error"] = dateString;
            }
        }
        else {
        
            if(_error != nil) dict[@"error"] = [(SWGObject*)_error asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

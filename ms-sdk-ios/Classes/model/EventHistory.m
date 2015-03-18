#import "SWGDate.h"
#import "EventHistory.h"

@implementation EventHistory

-(id)start: (SWGDate*) start
    ends: (SWGDate*) ends
    taskName: (NSString*) taskName
    order: (NSNumber*) order
    error: (ErrorResponse*) error
    
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
        
        
        id start_dict = dict[@"start"];
        
        if(start_dict != nil)
            _start = [[SWGDate  alloc]initWithValues:start_dict];
        
        
        
        
        id ends_dict = dict[@"ends"];
        
        if(ends_dict != nil)
            _ends = [[SWGDate  alloc]initWithValues:ends_dict];
        
        
        _taskName = dict[@"taskName"];
        
        _order = dict[@"order"];
        
        
        
        id error_dict = dict[@"error"];
        
        if(error_dict != nil)
            _error = [[ErrorResponse  alloc]initWithValues:error_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_start != nil){
        if([_start isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate *start in (NSArray*)_start) {
                [array addObject:[(SWGObject*)start asDictionary]];
            }
            dict[@"start"] = array;
        }
        else if(_start && [_start isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_start toString];
            if(dateString){
                dict[@"start"] = dateString;
            }
        }
        else {
        
            if(_start != nil) dict[@"start"] = [(SWGObject*)_start asDictionary];
        
        }
    }
    
    
    
    if(_ends != nil){
        if([_ends isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate *ends in (NSArray*)_ends) {
                [array addObject:[(SWGObject*)ends asDictionary]];
            }
            dict[@"ends"] = array;
        }
        else if(_ends && [_ends isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_ends toString];
            if(dateString){
                dict[@"ends"] = dateString;
            }
        }
        else {
        
            if(_ends != nil) dict[@"ends"] = [(SWGObject*)_ends asDictionary];
        
        }
    }
    
    
    
            if(_taskName != nil) dict[@"taskName"] = _taskName ;
        
    
    
            if(_order != nil) dict[@"order"] = _order ;
        
    
    
    if(_error != nil){
        if([_error isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( ErrorResponse *error in (NSArray*)_error) {
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

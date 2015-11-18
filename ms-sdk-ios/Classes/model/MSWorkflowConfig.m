#import "SWGDate.h"
#import "MSWorkflowConfig.h"

@implementation MSWorkflowConfig

-(id)code: (NSString*) code
    _description: (NSString*) _description
    status: (NSArray*) status
    
{
    _code = code;
    __description = _description;
    _status = status;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        __description = dict[@"description"];
        
        
        
        id status_dict = dict[@"status"];
        
        if([status_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)status_dict count]];
            if([(NSArray*)status_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)status_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[status_dict objectAtIndex:i]];
                    MSStatus* d = [[MSStatus alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _status = [[NSArray alloc] initWithArray:objs];
            }
            else
                _status = [[NSArray alloc] init];
        }
        else {
            _status = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
    if(_status != nil){
        if([_status isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_status count] ; i++ ) {
				MSStatus *status = [[MSStatus alloc]init];
				status = [(NSArray*)_status objectAtIndex:i];            
                [array addObject:[(SWGObject*)status asDictionary]];
            }
            dict[@"status"] = array;
        }
        else if(_status && [_status isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_status toString];
            if(dateString){
                dict[@"status"] = dateString;
            }
        }
        else {
        
            if(_status != nil) dict[@"status"] = [(SWGObject*)_status asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

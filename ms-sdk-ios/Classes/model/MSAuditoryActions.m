#import "SWGDate.h"
#import "MSAuditoryActions.h"

@implementation MSAuditoryActions

@synthesize actions = _actions;

-(id)actions: (NSArray*) actions
    
{
    _actions = actions;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id actions_dict = dict[@"actions"];
        
        if([actions_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)actions_dict count]];
            if([(NSArray*)actions_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)actions_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[actions_dict objectAtIndex:i]];
                    MSAuditory* d = [[MSAuditory alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _actions = [[NSArray alloc] initWithArray:objs];
            }
            else
                _actions = [[NSArray alloc] init];
        }
        else {
            _actions = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_actions != nil){
        if([_actions isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_actions count] ; i++ ) {
				MSAuditory *actions = [[MSAuditory alloc]init];
				actions = [(NSArray*)_actions objectAtIndex:i];
                [array addObject:[(SWGObject*)actions asDictionary]];
            }
            dict[@"actions"] = array;
        }
        else if(_actions && [_actions isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_actions toString];
            if(dateString){
                dict[@"actions"] = dateString;
            }
        }
        else {
        
            if(_actions != nil) dict[@"actions"] = [(SWGObject*)_actions asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

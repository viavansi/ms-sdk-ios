#import "SWGDate.h"
#import "MSAuditoryInfo.h"

@implementation MSAuditoryInfo

@synthesize actions = _actions;
@synthesize info = _info;

-(id)actions: (MSAuditoryActions*) actions
    info: (MSVerifierDocumentDTO*) info
    
{
    _actions = actions;
    _info = info;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id actions_dict = dict[@"actions"];
        
        if(actions_dict != nil)
            _actions = [[MSAuditoryActions  alloc]initWithValues:actions_dict];
        
        
        
        
        id info_dict = dict[@"info"];
        
        if(info_dict != nil)
            _info = [[MSVerifierDocumentDTO  alloc]initWithValues:info_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_actions != nil){
        if([_actions isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_actions count] ; i++ ) {
				MSAuditoryActions *actions = [[MSAuditoryActions alloc]init];
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
    
    
    
    if(_info != nil){
        if([_info isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_info count] ; i++ ) {
				MSVerifierDocumentDTO *info = [[MSVerifierDocumentDTO alloc]init];
				info = [(NSArray*)_info objectAtIndex:i];
                [array addObject:[(SWGObject*)info asDictionary]];
            }
            dict[@"info"] = array;
        }
        else if(_info && [_info isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_info toString];
            if(dateString){
                dict[@"info"] = dateString;
            }
        }
        else {
        
            if(_info != nil) dict[@"info"] = [(SWGObject*)_info asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

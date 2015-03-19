#import "SWGDate.h"
#import "MSInfoSystemStatus.h"

@implementation MSInfoSystemStatus

-(id)date: (NSString*) date
    info: (NSArray*) info
    
{
    _date = date;
    _info = info;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _date = dict[@"date"];
        
        
        
        id info_dict = dict[@"info"];
        
        if([info_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)info_dict count]];
            if([(NSArray*)info_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)info_dict) {
                    MSSystemStatus* d = [[MSSystemStatus alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _info = [[NSArray alloc] initWithArray:objs];
            }
            else
                _info = [[NSArray alloc] init];
        }
        else {
            _info = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_date != nil) dict[@"date"] = _date ;
        
    
    
    if(_info != nil){
        if([_info isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSSystemStatus *info in (NSArray*)_info) {
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

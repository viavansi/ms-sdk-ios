#import "SWGDate.h"
#import "MSInfoSystemStatus.h"

@implementation MSInfoSystemStatus

@synthesize date = _date;
@synthesize name = _name;
@synthesize info = _info;
@synthesize system = _system;
@synthesize status = _status;

-(id)date: (NSNumber*) date
    name: (NSString*) name
    info: (NSArray*) info
    system: (MSSystemInfo*) system
    status: (NSString*) status
    
{
    _date = date;
    _name = name;
    _info = info;
    _system = system;
    _status = status;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _date = dict[@"date"];
        
        _name = dict[@"name"];
        
        
        
        id info_dict = dict[@"info"];
        
        if([info_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)info_dict count]];
            if([(NSArray*)info_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)info_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[info_dict objectAtIndex:i]];
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
        
        
        
        
        id system_dict = dict[@"system"];
        
        if(system_dict != nil)
            _system = [[MSSystemInfo  alloc]initWithValues:system_dict];
        
        
        _status = dict[@"status"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_date != nil) dict[@"date"] = _date ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
    if(_info != nil){
        if([_info isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_info count] ; i++ ) {
				MSSystemStatus *info = [[MSSystemStatus alloc]init];
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
    
    
    
    if(_system != nil){
        if([_system isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_system count] ; i++ ) {
				MSSystemInfo *system = [[MSSystemInfo alloc]init];
				system = [(NSArray*)_system objectAtIndex:i];
                [array addObject:[(SWGObject*)system asDictionary]];
            }
            dict[@"system"] = array;
        }
        else if(_system && [_system isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_system toString];
            if(dateString){
                dict[@"system"] = dateString;
            }
        }
        else {
        
            if(_system != nil) dict[@"system"] = [(SWGObject*)_system asDictionary];
        
        }
    }
    
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

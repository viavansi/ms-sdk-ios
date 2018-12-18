#import "SWGDate.h"
#import "MSAuditory.h"

@implementation MSAuditory

@synthesize action = _action;
@synthesize date = _date;
@synthesize ip = _ip;
@synthesize data = _data;
@synthesize detail = _detail;
@synthesize geolocation = _geolocation;

-(id)action: (NSString*) action
    date: (SWGDate*) date
    ip: (NSString*) ip
    data: (NSString*) data
    detail: (NSString*) detail
    geolocation: (MSGeolocation*) geolocation
    
{
    _action = action;
    _date = date;
    _ip = ip;
    _data = data;
    _detail = detail;
    _geolocation = geolocation;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _action = dict[@"action"];
        
        
        
        id date_dict = dict[@"date"];
        
        if(date_dict != nil)
            _date = [[SWGDate  alloc]initWithValues:date_dict];
        
        
        _ip = dict[@"ip"];
        
        _data = dict[@"data"];
        
        _detail = dict[@"detail"];
        
        
        
        id geolocation_dict = dict[@"geolocation"];
        
        if(geolocation_dict != nil)
            _geolocation = [[MSGeolocation  alloc]initWithValues:geolocation_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_action != nil) dict[@"action"] = _action ;
        
    
    
    if(_date != nil){
        if([_date isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_date count] ; i++ ) {
				SWGDate *date = [[SWGDate alloc]init];
				date = [(NSArray*)_date objectAtIndex:i];
                [array addObject:[(SWGObject*)date asDictionary]];
            }
            dict[@"date"] = array;
        }
        else if(_date && [_date isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_date toString];
            if(dateString){
                dict[@"date"] = dateString;
            }
        }
        else {
        
            if(_date != nil) dict[@"date"] = [(SWGObject*)_date asDictionary];
        
        }
    }
    
    
    
            if(_ip != nil) dict[@"ip"] = _ip ;
        
    
    
            if(_data != nil) dict[@"data"] = _data ;
        
    
    
            if(_detail != nil) dict[@"detail"] = _detail ;
        
    
    
    if(_geolocation != nil){
        if([_geolocation isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_geolocation count] ; i++ ) {
				MSGeolocation *geolocation = [[MSGeolocation alloc]init];
				geolocation = [(NSArray*)_geolocation objectAtIndex:i];
                [array addObject:[(SWGObject*)geolocation asDictionary]];
            }
            dict[@"geolocation"] = array;
        }
        else if(_geolocation && [_geolocation isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_geolocation toString];
            if(dateString){
                dict[@"geolocation"] = dateString;
            }
        }
        else {
        
            if(_geolocation != nil) dict[@"geolocation"] = [(SWGObject*)_geolocation asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

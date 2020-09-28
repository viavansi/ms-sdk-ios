#import "SWGDate.h"
#import "MSAuditory.h"

@implementation MSAuditory

@synthesize action = _action;
@synthesize code = _code;
@synthesize date = _date;
@synthesize app = _app;
@synthesize user = _user;
@synthesize ip = _ip;
@synthesize data = _data;
@synthesize detail = _detail;
@synthesize userAgent = _userAgent;
@synthesize sessionId = _sessionId;
@synthesize geolocation = _geolocation;
@synthesize metadatas = _metadatas;
@synthesize internal = _internal;
@synthesize time = _time;

-(id)action: (NSString*) action
    code: (NSString*) code
    date: (NSNumber*) date
    app: (NSString*) app
    user: (NSString*) user
    ip: (NSString*) ip
    data: (NSString*) data
    detail: (NSString*) detail
    userAgent: (NSString*) userAgent
    sessionId: (NSString*) sessionId
    geolocation: (MSGeolocation*) geolocation
    metadatas: (NSArray*) metadatas
    internal: (NSNumber*) internal
    time: (NSNumber*) time
    
{
    _action = action;
    _code = code;
    _date = date;
    _app = app;
    _user = user;
    _ip = ip;
    _data = data;
    _detail = detail;
    _userAgent = userAgent;
    _sessionId = sessionId;
    _geolocation = geolocation;
    _metadatas = metadatas;
    _internal = internal;
    _time = time;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _action = dict[@"action"];
        
        _code = dict[@"code"];
        
        _date = dict[@"date"];
        
        _app = dict[@"app"];
        
        _user = dict[@"user"];
        
        _ip = dict[@"ip"];
        
        _data = dict[@"data"];
        
        _detail = dict[@"detail"];
        
        _userAgent = dict[@"userAgent"];
        
        _sessionId = dict[@"sessionId"];
        
        
        
        id geolocation_dict = dict[@"geolocation"];
        
        if(geolocation_dict != nil)
            _geolocation = [[MSGeolocation  alloc]initWithValues:geolocation_dict];
        
        
        
        
        id metadatas_dict = dict[@"metadatas"];
        
        if([metadatas_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)metadatas_dict count]];
            if([(NSArray*)metadatas_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)metadatas_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[metadatas_dict objectAtIndex:i]];
                    MSAuditoryMetadata* d = [[MSAuditoryMetadata alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _metadatas = [[NSArray alloc] initWithArray:objs];
            }
            else
                _metadatas = [[NSArray alloc] init];
        }
        else {
            _metadatas = [[NSArray alloc] init];
        }
        
        
        _internal = dict[@"internal"];
        
        _time = dict[@"time"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_action != nil) dict[@"action"] = _action ;
        
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_date != nil) dict[@"date"] = _date ;
        
    
    
            if(_app != nil) dict[@"app"] = _app ;
        
    
    
            if(_user != nil) dict[@"user"] = _user ;
        
    
    
            if(_ip != nil) dict[@"ip"] = _ip ;
        
    
    
            if(_data != nil) dict[@"data"] = _data ;
        
    
    
            if(_detail != nil) dict[@"detail"] = _detail ;
        
    
    
            if(_userAgent != nil) dict[@"userAgent"] = _userAgent ;
        
    
    
            if(_sessionId != nil) dict[@"sessionId"] = _sessionId ;
        
    
    
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
    
    
    
    if(_metadatas != nil){
        if([_metadatas isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_metadatas count] ; i++ ) {
				MSAuditoryMetadata *metadatas = [[MSAuditoryMetadata alloc]init];
				metadatas = [(NSArray*)_metadatas objectAtIndex:i];
                [array addObject:[(SWGObject*)metadatas asDictionary]];
            }
            dict[@"metadatas"] = array;
        }
        else if(_metadatas && [_metadatas isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_metadatas toString];
            if(dateString){
                dict[@"metadatas"] = dateString;
            }
        }
        else {
        
            if(_metadatas != nil) dict[@"metadatas"] = [(SWGObject*)_metadatas asDictionary];
        
        }
    }
    
    
    
            if(_internal != nil) dict[@"internal"] = _internal ;
        
    
    
            if(_time != nil) dict[@"time"] = _time ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

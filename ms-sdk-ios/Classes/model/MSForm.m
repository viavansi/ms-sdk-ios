#import "SWGDate.h"
#import "MSForm.h"

@implementation MSForm

-(id)code: (NSString*) code
    title: (NSString*) title
    _description: (NSString*) _description
    version: (NSString*) version
    templateCode: (NSString*) templateCode
    containers: (NSArray*) containers
    settings: (MSSetting*) settings
    values: (NSArray*) values
    nestedValues: (NSArray*) nestedValues
    
{
    _code = code;
    _title = title;
    __description = _description;
    _version = version;
    _templateCode = templateCode;
    _containers = containers;
    _settings = settings;
    _values = values;
    _nestedValues = nestedValues;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _title = dict[@"title"];
        
        __description = dict[@"description"];
        
        _version = dict[@"version"];
        
        _templateCode = dict[@"templateCode"];
        
        
        
        id containers_dict = dict[@"containers"];
        
        if([containers_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)containers_dict count]];
            if([(NSArray*)containers_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)containers_dict) {
                    MSContainer* d = [[MSContainer alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _containers = [[NSArray alloc] initWithArray:objs];
            }
            else
                _containers = [[NSArray alloc] init];
        }
        else {
            _containers = [[NSArray alloc] init];
        }
        
        
        
        
        id settings_dict = dict[@"settings"];
        
        if(settings_dict != nil)
            _settings = [[MSSetting  alloc]initWithValues:settings_dict];
        
        
        
        
        id values_dict = dict[@"values"];
        
        if([values_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)values_dict count]];
            if([(NSArray*)values_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)values_dict) {
                    MSFormValue* d = [[MSFormValue alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _values = [[NSArray alloc] initWithArray:objs];
            }
            else
                _values = [[NSArray alloc] init];
        }
        else {
            _values = [[NSArray alloc] init];
        }
        
        
        
        
        id nestedValues_dict = dict[@"nestedValues"];
        
        if([nestedValues_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)nestedValues_dict count]];
            if([(NSArray*)nestedValues_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)nestedValues_dict) {
                    MSFormNestedValue* d = [[MSFormNestedValue alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _nestedValues = [[NSArray alloc] initWithArray:objs];
            }
            else
                _nestedValues = [[NSArray alloc] init];
        }
        else {
            _nestedValues = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    
    
            if(_templateCode != nil) dict[@"templateCode"] = _templateCode ;
        
    
    
    if(_containers != nil){
        if([_containers isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSContainer *containers in (NSArray*)_containers) {
                [array addObject:[(SWGObject*)containers asDictionary]];
            }
            dict[@"containers"] = array;
        }
        else if(_containers && [_containers isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_containers toString];
            if(dateString){
                dict[@"containers"] = dateString;
            }
        }
        else {
        
            if(_containers != nil) dict[@"containers"] = [(SWGObject*)_containers asDictionary];
        
        }
    }
    
    
    
    if(_settings != nil){
        if([_settings isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSSetting *settings in (NSArray*)_settings) {
                [array addObject:[(SWGObject*)settings asDictionary]];
            }
            dict[@"settings"] = array;
        }
        else if(_settings && [_settings isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_settings toString];
            if(dateString){
                dict[@"settings"] = dateString;
            }
        }
        else {
        
            if(_settings != nil) dict[@"settings"] = [(SWGObject*)_settings asDictionary];
        
        }
    }
    
    
    
    if(_values != nil){
        if([_values isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSFormValue *values in (NSArray*)_values) {
                [array addObject:[(SWGObject*)values asDictionary]];
            }
            dict[@"values"] = array;
        }
        else if(_values && [_values isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_values toString];
            if(dateString){
                dict[@"values"] = dateString;
            }
        }
        else {
        
            if(_values != nil) dict[@"values"] = [(SWGObject*)_values asDictionary];
        
        }
    }
    
    
    
    if(_nestedValues != nil){
        if([_nestedValues isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSFormNestedValue *nestedValues in (NSArray*)_nestedValues) {
                [array addObject:[(SWGObject*)nestedValues asDictionary]];
            }
            dict[@"nestedValues"] = array;
        }
        else if(_nestedValues && [_nestedValues isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_nestedValues toString];
            if(dateString){
                dict[@"nestedValues"] = dateString;
            }
        }
        else {
        
            if(_nestedValues != nil) dict[@"nestedValues"] = [(SWGObject*)_nestedValues asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

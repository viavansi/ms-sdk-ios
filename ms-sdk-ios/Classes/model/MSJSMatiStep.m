#import "SWGDate.h"
#import "MSJSMatiStep.h"

@implementation MSJSMatiStep

@synthesize status = _status;
@synthesize _id = __id;
@synthesize data = _data;
@synthesize error = _error;

-(id)status: (MSNumber*) status
    _id: (NSString*) _id
    data: (MSJSMatiVerifData*) data
    error: (MSJSMatiStepError*) error
    
{
    _status = status;
    __id = _id;
    _data = data;
    _error = error;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id status_dict = dict[@"status"];
        
        if(status_dict != nil)
            _status = [[MSNumber  alloc]initWithValues:status_dict];
        
        
        __id = dict[@"id"];
        
        
        
        id data_dict = dict[@"data"];
        
        if(data_dict != nil)
            _data = [[MSJSMatiVerifData  alloc]initWithValues:data_dict];
        
        
        
        
        id error_dict = dict[@"error"];
        
        if(error_dict != nil)
            _error = [[MSJSMatiStepError  alloc]initWithValues:error_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_status != nil){
        if([_status isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_status count] ; i++ ) {
				MSNumber *status = [[MSNumber alloc]init];
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
    
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
    if(_data != nil){
        if([_data isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_data count] ; i++ ) {
				MSJSMatiVerifData *data = [[MSJSMatiVerifData alloc]init];
				data = [(NSArray*)_data objectAtIndex:i];
                [array addObject:[(SWGObject*)data asDictionary]];
            }
            dict[@"data"] = array;
        }
        else if(_data && [_data isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_data toString];
            if(dateString){
                dict[@"data"] = dateString;
            }
        }
        else {
        
            if(_data != nil) dict[@"data"] = [(SWGObject*)_data asDictionary];
        
        }
    }
    
    
    
    if(_error != nil){
        if([_error isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_error count] ; i++ ) {
				MSJSMatiStepError *error = [[MSJSMatiStepError alloc]init];
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

#import "SWGDate.h"
#import "MSTransfer.h"

@implementation MSTransfer

@synthesize name = _name;
@synthesize status = _status;
@synthesize transferDate = _transferDate;
@synthesize error = _error;
@synthesize response = _response;
@synthesize metadataList = _metadataList;

-(id)name: (NSString*) name
    status: (NSString*) status
    transferDate: (NSNumber*) transferDate
    error: (NSString*) error
    response: (NSString*) response
    metadataList: (NSArray*) metadataList
    
{
    _name = name;
    _status = status;
    _transferDate = transferDate;
    _error = error;
    _response = response;
    _metadataList = metadataList;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"];
        
        _status = dict[@"status"];
        
        _transferDate = dict[@"transferDate"];
        
        _error = dict[@"error"];
        
        _response = dict[@"response"];
        
        
        
        id metadataList_dict = dict[@"metadataList"];
        
        if([metadataList_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)metadataList_dict count]];
            if([(NSArray*)metadataList_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)metadataList_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[metadataList_dict objectAtIndex:i]];
                    MSParam* d = [[MSParam alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _metadataList = [[NSArray alloc] initWithArray:objs];
            }
            else
                _metadataList = [[NSArray alloc] init];
        }
        else {
            _metadataList = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_transferDate != nil) dict[@"transferDate"] = _transferDate ;
        
    
    
            if(_error != nil) dict[@"error"] = _error ;
        
    
    
            if(_response != nil) dict[@"response"] = _response ;
        
    
    
    if(_metadataList != nil){
        if([_metadataList isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_metadataList count] ; i++ ) {
				MSParam *metadataList = [[MSParam alloc]init];
				metadataList = [(NSArray*)_metadataList objectAtIndex:i];
                [array addObject:[(SWGObject*)metadataList asDictionary]];
            }
            dict[@"metadataList"] = array;
        }
        else if(_metadataList && [_metadataList isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_metadataList toString];
            if(dateString){
                dict[@"metadataList"] = dateString;
            }
        }
        else {
        
            if(_metadataList != nil) dict[@"metadataList"] = [(SWGObject*)_metadataList asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

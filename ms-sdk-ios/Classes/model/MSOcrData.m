#import "SWGDate.h"
#import "MSOcrData.h"

@implementation MSOcrData

@synthesize key = _key;
@synthesize version = _version;
@synthesize offline = _offline;
@synthesize result = _result;

-(id)key: (NSString*) key
    version: (NSNumber*) version
    offline: (NSNumber*) offline
    result: (NSArray*) result
    
{
    _key = key;
    _version = version;
    _offline = offline;
    _result = result;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"];
        
        _version = dict[@"version"];
        
        _offline = dict[@"offline"];
        
        
        
        id result_dict = dict[@"result"];
        
        if([result_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)result_dict count]];
            if([(NSArray*)result_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)result_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[result_dict objectAtIndex:i]];
                    MSJSOcrFieldExtractionResult* d = [[MSJSOcrFieldExtractionResult alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _result = [[NSArray alloc] initWithArray:objs];
            }
            else
                _result = [[NSArray alloc] init];
        }
        else {
            _result = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    
    
            if(_offline != nil) dict[@"offline"] = _offline ;
        
    
    
    if(_result != nil){
        if([_result isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_result count] ; i++ ) {
				MSJSOcrFieldExtractionResult *result = [[MSJSOcrFieldExtractionResult alloc]init];
				result = [(NSArray*)_result objectAtIndex:i];
                [array addObject:[(SWGObject*)result asDictionary]];
            }
            dict[@"result"] = array;
        }
        else if(_result && [_result isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_result toString];
            if(dateString){
                dict[@"result"] = dateString;
            }
        }
        else {
        
            if(_result != nil) dict[@"result"] = [(SWGObject*)_result asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

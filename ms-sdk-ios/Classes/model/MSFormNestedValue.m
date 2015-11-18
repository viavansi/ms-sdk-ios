#import "SWGDate.h"
#import "MSFormNestedValue.h"

@implementation MSFormNestedValue

-(id)key: (NSString*) key
    values: (NSArray*) values
    
{
    _key = key;
    _values = values;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"];
        
        
        
        id values_dict = dict[@"values"];
        
        if([values_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)values_dict count]];
            if([(NSArray*)values_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)values_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[values_dict objectAtIndex:i]];
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
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
    if(_values != nil){
        if([_values isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_values count] ; i++ ) {
				MSFormValue *values = [[MSFormValue alloc]init];
				values = [(NSArray*)_values objectAtIndex:i];            
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
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

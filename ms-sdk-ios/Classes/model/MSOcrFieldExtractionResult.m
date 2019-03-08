#import "SWGDate.h"
#import "MSOcrFieldExtractionResult.h"

@implementation MSOcrFieldExtractionResult

@synthesize derived = _derived;
@synthesize confidence = _confidence;
@synthesize key = _key;
@synthesize valid = _valid;
@synthesize value = _value;
@synthesize title = _title;

-(id)derived: (NSArray*) derived
    confidence: (NSNumber*) confidence
    key: (NSString*) key
    valid: (NSNumber*) valid
    value: (NSString*) value
    title: (NSString*) title
    
{
    _derived = derived;
    _confidence = confidence;
    _key = key;
    _valid = valid;
    _value = value;
    _title = title;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id derived_dict = dict[@"derived"];
        
        if([derived_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)derived_dict count]];
            if([(NSArray*)derived_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)derived_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[derived_dict objectAtIndex:i]];
                    MSFieldExtractionResultDerivedData* d = [[MSFieldExtractionResultDerivedData alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _derived = [[NSArray alloc] initWithArray:objs];
            }
            else
                _derived = [[NSArray alloc] init];
        }
        else {
            _derived = [[NSArray alloc] init];
        }
        
        
        _confidence = dict[@"confidence"];
        
        _key = dict[@"key"];
        
        _valid = dict[@"valid"];
        
        _value = dict[@"value"];
        
        _title = dict[@"title"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_derived != nil){
        if([_derived isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_derived count] ; i++ ) {
				MSFieldExtractionResultDerivedData *derived = [[MSFieldExtractionResultDerivedData alloc]init];
				derived = [(NSArray*)_derived objectAtIndex:i];
                [array addObject:[(SWGObject*)derived asDictionary]];
            }
            dict[@"derived"] = array;
        }
        else if(_derived && [_derived isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_derived toString];
            if(dateString){
                dict[@"derived"] = dateString;
            }
        }
        else {
        
            if(_derived != nil) dict[@"derived"] = [(SWGObject*)_derived asDictionary];
        
        }
    }
    
    
    
            if(_confidence != nil) dict[@"confidence"] = _confidence ;
        
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_valid != nil) dict[@"valid"] = _valid ;
        
    
    
            if(_value != nil) dict[@"value"] = _value ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

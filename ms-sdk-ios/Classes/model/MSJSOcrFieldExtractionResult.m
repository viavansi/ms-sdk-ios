#import "SWGDate.h"
#import "MSJSOcrFieldExtractionResult.h"

@implementation MSJSOcrFieldExtractionResult

-(id)confidence: (NSNumber*) confidence
    key: (NSString*) key
    valid: (NSNumber*) valid
    value: (NSString*) value
    title: (NSString*) title
    
{
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
    
    
            if(_confidence != nil) dict[@"confidence"] = _confidence ;
        
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_valid != nil) dict[@"valid"] = _valid ;
        
    
    
            if(_value != nil) dict[@"value"] = _value ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "SWGParam.h"

@implementation SWGParam

-(id)key: (NSString*) key
    value: (NSString*) value
{
  _key = key;
  _value = value;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"]; 
        _value = dict[@"value"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_key != nil) dict[@"key"] = _key ;
        if(_value != nil) dict[@"value"] = _value ;
        NSDictionary* output = [dict copy];
    return output;
}

@end


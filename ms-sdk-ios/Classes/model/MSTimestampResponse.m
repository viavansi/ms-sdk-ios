#import "SWGDate.h"
#import "MSTimestampResponse.h"

@implementation MSTimestampResponse

@synthesize timestamp = _timestamp;
@synthesize type = _type;

-(id)timestamp: (NSNumber*) timestamp
    type: (NSString*) type
    
{
    _timestamp = timestamp;
    _type = type;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _timestamp = dict[@"timestamp"];
        
        _type = dict[@"type"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_timestamp != nil) dict[@"timestamp"] = _timestamp ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

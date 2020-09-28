#import "SWGDate.h"
#import "MSMessageStatus.h"

@implementation MSMessageStatus

@synthesize status = _status;
@synthesize lastUpdated = _lastUpdated;

-(id)status: (NSString*) status
    lastUpdated: (NSNumber*) lastUpdated
    
{
    _status = status;
    _lastUpdated = lastUpdated;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _status = dict[@"status"];
        
        _lastUpdated = dict[@"lastUpdated"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_lastUpdated != nil) dict[@"lastUpdated"] = _lastUpdated ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

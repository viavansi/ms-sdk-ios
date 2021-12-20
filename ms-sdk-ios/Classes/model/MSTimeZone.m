#import "SWGDate.h"
#import "MSTimeZone.h"

@implementation MSTimeZone

@synthesize displayName = _displayName;
@synthesize _id = __id;
@synthesize dstsavings = _dstsavings;
@synthesize rawOffset = _rawOffset;

-(id)displayName: (NSString*) displayName
    _id: (NSString*) _id
    dstsavings: (NSNumber*) dstsavings
    rawOffset: (NSNumber*) rawOffset
    
{
    _displayName = displayName;
    __id = _id;
    _dstsavings = dstsavings;
    _rawOffset = rawOffset;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _displayName = dict[@"displayName"];
        
        __id = dict[@"id"];
        
        _dstsavings = dict[@"dstsavings"];
        
        _rawOffset = dict[@"rawOffset"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_displayName != nil) dict[@"displayName"] = _displayName ;
        
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
            if(_dstsavings != nil) dict[@"dstsavings"] = _dstsavings ;
        
    
    
            if(_rawOffset != nil) dict[@"rawOffset"] = _rawOffset ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

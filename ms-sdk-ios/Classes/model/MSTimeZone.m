#import "SWGDate.h"
#import "MSTimeZone.h"

@implementation MSTimeZone

@synthesize _id = __id;
@synthesize displayName = _displayName;
@synthesize dstsavings = _dstsavings;
@synthesize rawOffset = _rawOffset;

-(id)_id: (NSString*) _id
    displayName: (NSString*) displayName
    dstsavings: (NSNumber*) dstsavings
    rawOffset: (NSNumber*) rawOffset
    
{
    __id = _id;
    _displayName = displayName;
    _dstsavings = dstsavings;
    _rawOffset = rawOffset;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"];
        
        _displayName = dict[@"displayName"];
        
        _dstsavings = dict[@"dstsavings"];
        
        _rawOffset = dict[@"rawOffset"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
            if(_displayName != nil) dict[@"displayName"] = _displayName ;
        
    
    
            if(_dstsavings != nil) dict[@"dstsavings"] = _dstsavings ;
        
    
    
            if(_rawOffset != nil) dict[@"rawOffset"] = _rawOffset ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

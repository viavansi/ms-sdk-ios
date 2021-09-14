#import "SWGDate.h"
#import "MSTimeZone.h"

@implementation MSTimeZone

@synthesize rawOffset = _rawOffset;
@synthesize dstsavings = _dstsavings;
@synthesize _id = __id;
@synthesize displayName = _displayName;

-(id)rawOffset: (NSNumber*) rawOffset
    dstsavings: (NSNumber*) dstsavings
    _id: (NSString*) _id
    displayName: (NSString*) displayName
    
{
    _rawOffset = rawOffset;
    _dstsavings = dstsavings;
    __id = _id;
    _displayName = displayName;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _rawOffset = dict[@"rawOffset"];
        
        _dstsavings = dict[@"dstsavings"];
        
        __id = dict[@"id"];
        
        _displayName = dict[@"displayName"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_rawOffset != nil) dict[@"rawOffset"] = _rawOffset ;
        
    
    
            if(_dstsavings != nil) dict[@"dstsavings"] = _dstsavings ;
        
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
            if(_displayName != nil) dict[@"displayName"] = _displayName ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

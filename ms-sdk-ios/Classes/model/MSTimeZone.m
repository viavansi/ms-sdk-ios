#import "SWGDate.h"
#import "MSTimeZone.h"

@implementation MSTimeZone

@synthesize dstsavings = _dstsavings;
@synthesize rawOffset = _rawOffset;
@synthesize _id = __id;
@synthesize displayName = _displayName;

-(id)dstsavings: (NSNumber*) dstsavings
    rawOffset: (NSNumber*) rawOffset
    _id: (NSString*) _id
    displayName: (NSString*) displayName
    
{
    _dstsavings = dstsavings;
    _rawOffset = rawOffset;
    __id = _id;
    _displayName = displayName;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _dstsavings = dict[@"dstsavings"];
        
        _rawOffset = dict[@"rawOffset"];
        
        __id = dict[@"id"];
        
        _displayName = dict[@"displayName"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_dstsavings != nil) dict[@"dstsavings"] = _dstsavings ;
        
    
    
            if(_rawOffset != nil) dict[@"rawOffset"] = _rawOffset ;
        
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
            if(_displayName != nil) dict[@"displayName"] = _displayName ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSClientApp.h"

@implementation MSClientApp

@synthesize typeApp = _typeApp;
@synthesize urlApp = _urlApp;

-(id)typeApp: (NSString*) typeApp
    urlApp: (NSString*) urlApp
    
{
    _typeApp = typeApp;
    _urlApp = urlApp;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _typeApp = dict[@"typeApp"];
        
        _urlApp = dict[@"urlApp"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_typeApp != nil) dict[@"typeApp"] = _typeApp ;
        
    
    
            if(_urlApp != nil) dict[@"urlApp"] = _urlApp ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

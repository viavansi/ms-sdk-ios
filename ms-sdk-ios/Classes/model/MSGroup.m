#import "SWGDate.h"
#import "MSGroup.h"

@implementation MSGroup

@synthesize code = _code;
@synthesize title = _title;
@synthesize _description = __description;

-(id)code: (NSString*) code
    title: (NSString*) title
    _description: (NSString*) _description
    
{
    _code = code;
    _title = title;
    __description = _description;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _title = dict[@"title"];
        
        __description = dict[@"description"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

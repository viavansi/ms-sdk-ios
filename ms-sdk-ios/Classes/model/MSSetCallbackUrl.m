#import "SWGDate.h"
#import "MSSetCallbackUrl.h"

@implementation MSSetCallbackUrl

@synthesize setCode = _setCode;
@synthesize url = _url;
@synthesize authorization = _authorization;

-(id)setCode: (NSString*) setCode
    url: (NSString*) url
    authorization: (NSString*) authorization
    
{
    _setCode = setCode;
    _url = url;
    _authorization = authorization;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _setCode = dict[@"setCode"];
        
        _url = dict[@"url"];
        
        _authorization = dict[@"authorization"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_setCode != nil) dict[@"setCode"] = _setCode ;
        
    
    
            if(_url != nil) dict[@"url"] = _url ;
        
    
    
            if(_authorization != nil) dict[@"authorization"] = _authorization ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

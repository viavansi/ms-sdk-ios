#import "SWGDate.h"
#import "MSCallbackUrl.h"

@implementation MSCallbackUrl

@synthesize messageCode = _messageCode;
@synthesize url = _url;
@synthesize authorization = _authorization;

-(id)messageCode: (NSString*) messageCode
    url: (NSString*) url
    authorization: (NSString*) authorization
    
{
    _messageCode = messageCode;
    _url = url;
    _authorization = authorization;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        _url = dict[@"url"];
        
        _authorization = dict[@"authorization"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_url != nil) dict[@"url"] = _url ;
        
    
    
            if(_authorization != nil) dict[@"authorization"] = _authorization ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

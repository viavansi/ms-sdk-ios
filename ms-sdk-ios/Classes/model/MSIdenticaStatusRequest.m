#import "SWGDate.h"
#import "MSIdenticaStatusRequest.h"

@implementation MSIdenticaStatusRequest

@synthesize requestId = _requestId;
@synthesize identicaServer = _identicaServer;

-(id)requestId: (NSString*) requestId
    identicaServer: (NSString*) identicaServer
    
{
    _requestId = requestId;
    _identicaServer = identicaServer;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _requestId = dict[@"requestId"];
        
        _identicaServer = dict[@"identicaServer"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_requestId != nil) dict[@"requestId"] = _requestId ;
        
    
    
            if(_identicaServer != nil) dict[@"identicaServer"] = _identicaServer ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

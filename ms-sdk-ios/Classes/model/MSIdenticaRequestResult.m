#import "SWGDate.h"
#import "MSIdenticaRequestResult.h"

@implementation MSIdenticaRequestResult

@synthesize identicaServer = _identicaServer;
@synthesize clientId = _clientId;
@synthesize userId = _userId;
@synthesize serialId = _serialId;

-(id)identicaServer: (NSString*) identicaServer
    clientId: (NSString*) clientId
    userId: (NSString*) userId
    serialId: (NSString*) serialId
    
{
    _identicaServer = identicaServer;
    _clientId = clientId;
    _userId = userId;
    _serialId = serialId;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _identicaServer = dict[@"identicaServer"];
        
        _clientId = dict[@"clientId"];
        
        _userId = dict[@"userId"];
        
        _serialId = dict[@"serialId"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_identicaServer != nil) dict[@"identicaServer"] = _identicaServer ;
        
    
    
            if(_clientId != nil) dict[@"clientId"] = _clientId ;
        
    
    
            if(_userId != nil) dict[@"userId"] = _userId ;
        
    
    
            if(_serialId != nil) dict[@"serialId"] = _serialId ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

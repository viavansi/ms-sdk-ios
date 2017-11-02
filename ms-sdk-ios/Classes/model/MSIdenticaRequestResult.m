#import "SWGDate.h"
#import "MSIdenticaRequestResult.h"

@implementation MSIdenticaRequestResult

-(id)responseMessage: (NSString*) responseMessage
    responseCode: (NSString*) responseCode
    
{
    _responseMessage = responseMessage;
    _responseCode = responseCode;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _responseMessage = dict[@"responseMessage"];
        
        _responseCode = dict[@"responseCode"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_responseMessage != nil) dict[@"responseMessage"] = _responseMessage ;
        
    
    
            if(_responseCode != nil) dict[@"responseCode"] = _responseCode ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

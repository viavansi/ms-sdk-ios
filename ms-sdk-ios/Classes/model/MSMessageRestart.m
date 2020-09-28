#import "SWGDate.h"
#import "MSMessageRestart.h"

@implementation MSMessageRestart

@synthesize messageCode = _messageCode;

-(id)messageCode: (NSString*) messageCode
    
{
    _messageCode = messageCode;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

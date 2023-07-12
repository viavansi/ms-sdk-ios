#import "SWGDate.h"
#import "MSRecipientStatus.h"

@implementation MSRecipientStatus

@synthesize key = _key;
@synthesize messageCode = _messageCode;
@synthesize status = _status;

-(id)key: (NSString*) key
    messageCode: (NSString*) messageCode
    status: (NSString*) status
    
{
    _key = key;
    _messageCode = messageCode;
    _status = status;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"];
        
        _messageCode = dict[@"messageCode"];
        
        _status = dict[@"status"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

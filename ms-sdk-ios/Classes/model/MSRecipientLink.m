#import "SWGDate.h"
#import "MSRecipientLink.h"

@implementation MSRecipientLink

@synthesize key = _key;
@synthesize messageCode = _messageCode;
@synthesize link = _link;
@synthesize token = _token;
@synthesize status = _status;

-(id)key: (NSString*) key
    messageCode: (NSString*) messageCode
    link: (NSString*) link
    token: (NSString*) token
    status: (NSString*) status
    
{
    _key = key;
    _messageCode = messageCode;
    _link = link;
    _token = token;
    _status = status;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _key = dict[@"key"];
        
        _messageCode = dict[@"messageCode"];
        
        _link = dict[@"link"];
        
        _token = dict[@"token"];
        
        _status = dict[@"status"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_key != nil) dict[@"key"] = _key ;
        
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_link != nil) dict[@"link"] = _link ;
        
    
    
            if(_token != nil) dict[@"token"] = _token ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

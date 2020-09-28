#import "SWGDate.h"
#import "MSCallbackMail.h"

@implementation MSCallbackMail

@synthesize messageCode = _messageCode;
@synthesize mails = _mails;
@synthesize phones = _phones;

-(id)messageCode: (NSString*) messageCode
    mails: (NSString*) mails
    phones: (NSString*) phones
    
{
    _messageCode = messageCode;
    _mails = mails;
    _phones = phones;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        _mails = dict[@"mails"];
        
        _phones = dict[@"phones"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_mails != nil) dict[@"mails"] = _mails ;
        
    
    
            if(_phones != nil) dict[@"phones"] = _phones ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

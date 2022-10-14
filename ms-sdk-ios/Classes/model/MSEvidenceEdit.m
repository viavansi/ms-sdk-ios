#import "SWGDate.h"
#import "MSEvidenceEdit.h"

@implementation MSEvidenceEdit

@synthesize messageCode = _messageCode;
@synthesize evidenceCode = _evidenceCode;
@synthesize email = _email;
@synthesize phone = _phone;

-(id)messageCode: (NSString*) messageCode
    evidenceCode: (NSString*) evidenceCode
    email: (NSString*) email
    phone: (NSString*) phone
    
{
    _messageCode = messageCode;
    _evidenceCode = evidenceCode;
    _email = email;
    _phone = phone;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        _evidenceCode = dict[@"evidenceCode"];
        
        _email = dict[@"email"];
        
        _phone = dict[@"phone"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_evidenceCode != nil) dict[@"evidenceCode"] = _evidenceCode ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_phone != nil) dict[@"phone"] = _phone ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

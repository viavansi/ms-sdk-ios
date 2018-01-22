#import "SWGDate.h"
#import "MSCustomization.h"

@implementation MSCustomization

@synthesize mailFrom = _mailFrom;
@synthesize smsFrom = _smsFrom;
@synthesize requestMailSubject = _requestMailSubject;
@synthesize requestMailBody = _requestMailBody;
@synthesize requestSmsBody = _requestSmsBody;
@synthesize callbackMailSuccessSubject = _callbackMailSuccessSubject;
@synthesize callbackMailSuccessBody = _callbackMailSuccessBody;
@synthesize callbackMailExpiredSubject = _callbackMailExpiredSubject;
@synthesize callbackMailExpiredBody = _callbackMailExpiredBody;
@synthesize callbackMailRejectedSubject = _callbackMailRejectedSubject;
@synthesize callbackMailRejectedBody = _callbackMailRejectedBody;
@synthesize callbackMailErrorSubject = _callbackMailErrorSubject;
@synthesize callbackMailErrorBody = _callbackMailErrorBody;

-(id)mailFrom: (NSString*) mailFrom
    smsFrom: (NSString*) smsFrom
    requestMailSubject: (NSString*) requestMailSubject
    requestMailBody: (NSString*) requestMailBody
    requestSmsBody: (NSString*) requestSmsBody
    callbackMailSuccessSubject: (NSString*) callbackMailSuccessSubject
    callbackMailSuccessBody: (NSString*) callbackMailSuccessBody
    callbackMailExpiredSubject: (NSString*) callbackMailExpiredSubject
    callbackMailExpiredBody: (NSString*) callbackMailExpiredBody
    callbackMailRejectedSubject: (NSString*) callbackMailRejectedSubject
    callbackMailRejectedBody: (NSString*) callbackMailRejectedBody
    callbackMailErrorSubject: (NSString*) callbackMailErrorSubject
    callbackMailErrorBody: (NSString*) callbackMailErrorBody
    
{
    _mailFrom = mailFrom;
    _smsFrom = smsFrom;
    _requestMailSubject = requestMailSubject;
    _requestMailBody = requestMailBody;
    _requestSmsBody = requestSmsBody;
    _callbackMailSuccessSubject = callbackMailSuccessSubject;
    _callbackMailSuccessBody = callbackMailSuccessBody;
    _callbackMailExpiredSubject = callbackMailExpiredSubject;
    _callbackMailExpiredBody = callbackMailExpiredBody;
    _callbackMailRejectedSubject = callbackMailRejectedSubject;
    _callbackMailRejectedBody = callbackMailRejectedBody;
    _callbackMailErrorSubject = callbackMailErrorSubject;
    _callbackMailErrorBody = callbackMailErrorBody;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _mailFrom = dict[@"mailFrom"];
        
        _smsFrom = dict[@"smsFrom"];
        
        _requestMailSubject = dict[@"requestMailSubject"];
        
        _requestMailBody = dict[@"requestMailBody"];
        
        _requestSmsBody = dict[@"requestSmsBody"];
        
        _callbackMailSuccessSubject = dict[@"callbackMailSuccessSubject"];
        
        _callbackMailSuccessBody = dict[@"callbackMailSuccessBody"];
        
        _callbackMailExpiredSubject = dict[@"callbackMailExpiredSubject"];
        
        _callbackMailExpiredBody = dict[@"callbackMailExpiredBody"];
        
        _callbackMailRejectedSubject = dict[@"callbackMailRejectedSubject"];
        
        _callbackMailRejectedBody = dict[@"callbackMailRejectedBody"];
        
        _callbackMailErrorSubject = dict[@"callbackMailErrorSubject"];
        
        _callbackMailErrorBody = dict[@"callbackMailErrorBody"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_mailFrom != nil) dict[@"mailFrom"] = _mailFrom ;
        
    
    
            if(_smsFrom != nil) dict[@"smsFrom"] = _smsFrom ;
        
    
    
            if(_requestMailSubject != nil) dict[@"requestMailSubject"] = _requestMailSubject ;
        
    
    
            if(_requestMailBody != nil) dict[@"requestMailBody"] = _requestMailBody ;
        
    
    
            if(_requestSmsBody != nil) dict[@"requestSmsBody"] = _requestSmsBody ;
        
    
    
            if(_callbackMailSuccessSubject != nil) dict[@"callbackMailSuccessSubject"] = _callbackMailSuccessSubject ;
        
    
    
            if(_callbackMailSuccessBody != nil) dict[@"callbackMailSuccessBody"] = _callbackMailSuccessBody ;
        
    
    
            if(_callbackMailExpiredSubject != nil) dict[@"callbackMailExpiredSubject"] = _callbackMailExpiredSubject ;
        
    
    
            if(_callbackMailExpiredBody != nil) dict[@"callbackMailExpiredBody"] = _callbackMailExpiredBody ;
        
    
    
            if(_callbackMailRejectedSubject != nil) dict[@"callbackMailRejectedSubject"] = _callbackMailRejectedSubject ;
        
    
    
            if(_callbackMailRejectedBody != nil) dict[@"callbackMailRejectedBody"] = _callbackMailRejectedBody ;
        
    
    
            if(_callbackMailErrorSubject != nil) dict[@"callbackMailErrorSubject"] = _callbackMailErrorSubject ;
        
    
    
            if(_callbackMailErrorBody != nil) dict[@"callbackMailErrorBody"] = _callbackMailErrorBody ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

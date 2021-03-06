#import "SWGDate.h"
#import "MSCustomization.h"

@implementation MSCustomization

@synthesize mailFrom = _mailFrom;
@synthesize smsFrom = _smsFrom;
@synthesize requestMailSubject = _requestMailSubject;
@synthesize requestMailBody = _requestMailBody;
@synthesize requestSmsBody = _requestSmsBody;
@synthesize callbackSmsBody = _callbackSmsBody;
@synthesize callbackMailSuccessSubject = _callbackMailSuccessSubject;
@synthesize callbackMailSuccessBody = _callbackMailSuccessBody;
@synthesize callbackMailExpiredSubject = _callbackMailExpiredSubject;
@synthesize callbackMailExpiredBody = _callbackMailExpiredBody;
@synthesize callbackMailWaitingCheckSubject = _callbackMailWaitingCheckSubject;
@synthesize callbackMailWaitingCheckBody = _callbackMailWaitingCheckBody;
@synthesize callbackMailRejectedSubject = _callbackMailRejectedSubject;
@synthesize callbackMailRejectedBody = _callbackMailRejectedBody;
@synthesize callbackMailErrorSubject = _callbackMailErrorSubject;
@synthesize callbackMailErrorBody = _callbackMailErrorBody;
@synthesize callbackSmsReminderBody = _callbackSmsReminderBody;
@synthesize callbackMailReminderBody = _callbackMailReminderBody;
@synthesize callbackMailReminderSubject = _callbackMailReminderSubject;
@synthesize successMessage = _successMessage;

-(id)mailFrom: (NSString*) mailFrom
    smsFrom: (NSString*) smsFrom
    requestMailSubject: (NSString*) requestMailSubject
    requestMailBody: (NSString*) requestMailBody
    requestSmsBody: (NSString*) requestSmsBody
    callbackSmsBody: (NSString*) callbackSmsBody
    callbackMailSuccessSubject: (NSString*) callbackMailSuccessSubject
    callbackMailSuccessBody: (NSString*) callbackMailSuccessBody
    callbackMailExpiredSubject: (NSString*) callbackMailExpiredSubject
    callbackMailExpiredBody: (NSString*) callbackMailExpiredBody
    callbackMailWaitingCheckSubject: (NSString*) callbackMailWaitingCheckSubject
    callbackMailWaitingCheckBody: (NSString*) callbackMailWaitingCheckBody
    callbackMailRejectedSubject: (NSString*) callbackMailRejectedSubject
    callbackMailRejectedBody: (NSString*) callbackMailRejectedBody
    callbackMailErrorSubject: (NSString*) callbackMailErrorSubject
    callbackMailErrorBody: (NSString*) callbackMailErrorBody
    callbackSmsReminderBody: (NSString*) callbackSmsReminderBody
    callbackMailReminderBody: (NSString*) callbackMailReminderBody
    callbackMailReminderSubject: (NSString*) callbackMailReminderSubject
    successMessage: (NSString*) successMessage
    
{
    _mailFrom = mailFrom;
    _smsFrom = smsFrom;
    _requestMailSubject = requestMailSubject;
    _requestMailBody = requestMailBody;
    _requestSmsBody = requestSmsBody;
    _callbackSmsBody = callbackSmsBody;
    _callbackMailSuccessSubject = callbackMailSuccessSubject;
    _callbackMailSuccessBody = callbackMailSuccessBody;
    _callbackMailExpiredSubject = callbackMailExpiredSubject;
    _callbackMailExpiredBody = callbackMailExpiredBody;
    _callbackMailWaitingCheckSubject = callbackMailWaitingCheckSubject;
    _callbackMailWaitingCheckBody = callbackMailWaitingCheckBody;
    _callbackMailRejectedSubject = callbackMailRejectedSubject;
    _callbackMailRejectedBody = callbackMailRejectedBody;
    _callbackMailErrorSubject = callbackMailErrorSubject;
    _callbackMailErrorBody = callbackMailErrorBody;
    _callbackSmsReminderBody = callbackSmsReminderBody;
    _callbackMailReminderBody = callbackMailReminderBody;
    _callbackMailReminderSubject = callbackMailReminderSubject;
    _successMessage = successMessage;
    

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
        
        _callbackSmsBody = dict[@"callbackSmsBody"];
        
        _callbackMailSuccessSubject = dict[@"callbackMailSuccessSubject"];
        
        _callbackMailSuccessBody = dict[@"callbackMailSuccessBody"];
        
        _callbackMailExpiredSubject = dict[@"callbackMailExpiredSubject"];
        
        _callbackMailExpiredBody = dict[@"callbackMailExpiredBody"];
        
        _callbackMailWaitingCheckSubject = dict[@"callbackMailWaitingCheckSubject"];
        
        _callbackMailWaitingCheckBody = dict[@"callbackMailWaitingCheckBody"];
        
        _callbackMailRejectedSubject = dict[@"callbackMailRejectedSubject"];
        
        _callbackMailRejectedBody = dict[@"callbackMailRejectedBody"];
        
        _callbackMailErrorSubject = dict[@"callbackMailErrorSubject"];
        
        _callbackMailErrorBody = dict[@"callbackMailErrorBody"];
        
        _callbackSmsReminderBody = dict[@"callbackSmsReminderBody"];
        
        _callbackMailReminderBody = dict[@"callbackMailReminderBody"];
        
        _callbackMailReminderSubject = dict[@"callbackMailReminderSubject"];
        
        _successMessage = dict[@"successMessage"];
        
        
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
        
    
    
            if(_callbackSmsBody != nil) dict[@"callbackSmsBody"] = _callbackSmsBody ;
        
    
    
            if(_callbackMailSuccessSubject != nil) dict[@"callbackMailSuccessSubject"] = _callbackMailSuccessSubject ;
        
    
    
            if(_callbackMailSuccessBody != nil) dict[@"callbackMailSuccessBody"] = _callbackMailSuccessBody ;
        
    
    
            if(_callbackMailExpiredSubject != nil) dict[@"callbackMailExpiredSubject"] = _callbackMailExpiredSubject ;
        
    
    
            if(_callbackMailExpiredBody != nil) dict[@"callbackMailExpiredBody"] = _callbackMailExpiredBody ;
        
    
    
            if(_callbackMailWaitingCheckSubject != nil) dict[@"callbackMailWaitingCheckSubject"] = _callbackMailWaitingCheckSubject ;
        
    
    
            if(_callbackMailWaitingCheckBody != nil) dict[@"callbackMailWaitingCheckBody"] = _callbackMailWaitingCheckBody ;
        
    
    
            if(_callbackMailRejectedSubject != nil) dict[@"callbackMailRejectedSubject"] = _callbackMailRejectedSubject ;
        
    
    
            if(_callbackMailRejectedBody != nil) dict[@"callbackMailRejectedBody"] = _callbackMailRejectedBody ;
        
    
    
            if(_callbackMailErrorSubject != nil) dict[@"callbackMailErrorSubject"] = _callbackMailErrorSubject ;
        
    
    
            if(_callbackMailErrorBody != nil) dict[@"callbackMailErrorBody"] = _callbackMailErrorBody ;
        
    
    
            if(_callbackSmsReminderBody != nil) dict[@"callbackSmsReminderBody"] = _callbackSmsReminderBody ;
        
    
    
            if(_callbackMailReminderBody != nil) dict[@"callbackMailReminderBody"] = _callbackMailReminderBody ;
        
    
    
            if(_callbackMailReminderSubject != nil) dict[@"callbackMailReminderSubject"] = _callbackMailReminderSubject ;
        
    
    
            if(_successMessage != nil) dict[@"successMessage"] = _successMessage ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

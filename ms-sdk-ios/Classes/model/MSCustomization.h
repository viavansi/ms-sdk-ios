#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSCustomization : SWGObject

@property(nonatomic) NSString* mailFrom;  
@property(nonatomic) NSString* smsFrom;  
@property(nonatomic) NSString* requestMailSubject;  
@property(nonatomic) NSString* requestMailBody;  
@property(nonatomic) NSString* requestSmsBody;  
@property(nonatomic) NSString* callbackMailSuccessSubject;  
@property(nonatomic) NSString* callbackMailSuccessBody;  
@property(nonatomic) NSString* callbackMailExpiredSubject;  
@property(nonatomic) NSString* callbackMailExpiredBody;  
@property(nonatomic) NSString* callbackMailWaitingCheckSubject;  
@property(nonatomic) NSString* callbackMailWaitingCheckBody;  
@property(nonatomic) NSString* callbackMailRejectedSubject;  
@property(nonatomic) NSString* callbackMailRejectedBody;  
@property(nonatomic) NSString* callbackMailErrorSubject;  
@property(nonatomic) NSString* callbackMailErrorBody;  
@property(nonatomic) NSString* callbackSmsReminderBody;  
@property(nonatomic) NSString* callbackMailReminderBody;  
@property(nonatomic) NSString* callbackMailReminderSubject;  
@property(nonatomic) NSString* successMessage;  
- (id) mailFrom: (NSString*) mailFrom     
    smsFrom: (NSString*) smsFrom     
    requestMailSubject: (NSString*) requestMailSubject     
    requestMailBody: (NSString*) requestMailBody     
    requestSmsBody: (NSString*) requestSmsBody     
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
    successMessage: (NSString*) successMessage;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

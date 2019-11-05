#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "SWGDate.h"
#import "MSNotification.h"
#import "MSWorkflow.h"
#import "MSJSTransfer.h"
#import "MSPolicy.h"
#import "MSErrorResponse.h"
#import "MSAuditory.h"
#import "MSDocument.h"


@interface MSMessage : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* externalCode;  
@property(nonatomic) NSString* externalStatus;  
@property(nonatomic) NSString* inboxCode;  
@property(nonatomic) NSString* inboxStatus;  
@property(nonatomic) NSString* callbackInbox;  
@property(nonatomic) NSString* callbackInboxAuthorization;  
@property(nonatomic) NSString* callbackCRM;  
@property(nonatomic) NSString* callbackCRMAuthorization;  
@property(nonatomic) NSString* callbackCRMResponse;  
@property(nonatomic) NSNumber* disabled;  
@property(nonatomic) NSString* userCode;  
@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSString* appCode;  
@property(nonatomic) NSString* version;  
@property(nonatomic) MSWorkflow* workflow;  
@property(nonatomic) MSNotification* notification;  
@property(nonatomic) MSDocument* document;  
@property(nonatomic) NSArray* metadataList;  
@property(nonatomic) NSArray* policies;  
@property(nonatomic) NSString* callbackURL;  
@property(nonatomic) NSString* callbackPhones;  
@property(nonatomic) NSString* callbackMails;  
@property(nonatomic) NSString* callbackCheckListMails;  
@property(nonatomic) NSArray* callbackMailsFormKeys;  
@property(nonatomic) NSString* callbackMailFilename;  
@property(nonatomic) NSString* callbackAuthorization;  
@property(nonatomic) MSErrorResponse* error;  
@property(nonatomic) NSString* pid;  
@property(nonatomic) NSString* server;  
@property(nonatomic) SWGDate* processTimeExpired;  
@property(nonatomic) NSString* commentReject;  
@property(nonatomic) NSString* callbackResponse;  
@property(nonatomic) NSArray* auditory;  
@property(nonatomic) NSArray* transfers;  
@property(nonatomic) NSString* languageId;  
@property(nonatomic) NSString* timeZoneId;  
@property(nonatomic) NSString* setCode;  
@property(nonatomic) NSString* setStatus;  
@property(nonatomic) NSString* signPageServer;  
- (id) code: (NSString*) code     
    externalCode: (NSString*) externalCode     
    externalStatus: (NSString*) externalStatus     
    inboxCode: (NSString*) inboxCode     
    inboxStatus: (NSString*) inboxStatus     
    callbackInbox: (NSString*) callbackInbox     
    callbackInboxAuthorization: (NSString*) callbackInboxAuthorization     
    callbackCRM: (NSString*) callbackCRM     
    callbackCRMAuthorization: (NSString*) callbackCRMAuthorization     
    callbackCRMResponse: (NSString*) callbackCRMResponse     
    disabled: (NSNumber*) disabled     
    userCode: (NSString*) userCode     
    groupCode: (NSString*) groupCode     
    appCode: (NSString*) appCode     
    version: (NSString*) version     
    workflow: (MSWorkflow*) workflow     
    notification: (MSNotification*) notification     
    document: (MSDocument*) document     
    metadataList: (NSArray*) metadataList     
    policies: (NSArray*) policies     
    callbackURL: (NSString*) callbackURL     
    callbackPhones: (NSString*) callbackPhones     
    callbackMails: (NSString*) callbackMails     
    callbackCheckListMails: (NSString*) callbackCheckListMails     
    callbackMailsFormKeys: (NSArray*) callbackMailsFormKeys     
    callbackMailFilename: (NSString*) callbackMailFilename     
    callbackAuthorization: (NSString*) callbackAuthorization     
    error: (MSErrorResponse*) error     
    pid: (NSString*) pid     
    server: (NSString*) server     
    processTimeExpired: (SWGDate*) processTimeExpired     
    commentReject: (NSString*) commentReject     
    callbackResponse: (NSString*) callbackResponse     
    auditory: (NSArray*) auditory     
    transfers: (NSArray*) transfers     
    languageId: (NSString*) languageId     
    timeZoneId: (NSString*) timeZoneId     
    setCode: (NSString*) setCode     
    setStatus: (NSString*) setStatus     
    signPageServer: (NSString*) signPageServer;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

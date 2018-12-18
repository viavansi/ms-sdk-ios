#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "SWGDate.h"
#import "MSNotification.h"
#import "MSWorkflow.h"
#import "MSPolicy.h"
#import "MSErrorResponse.h"
#import "MSAuditory.h"
#import "MSDocument.h"


@interface MSMessage : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* externalCode;  
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
- (id) code: (NSString*) code     
    externalCode: (NSString*) externalCode     
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
    auditory: (NSArray*) auditory;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

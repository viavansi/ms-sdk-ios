#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "SWGDate.h"
#import "MSNotification.h"
#import "MSWorkflow.h"
#import "MSPolicy.h"
#import "MSErrorResponse.h"
#import "MSDocument.h"


@interface MSMessage : SWGObject

@property(nonatomic) NSString* code;  
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
@property(nonatomic) NSArray* callbackMailsFormKeys;  
@property(nonatomic) MSErrorResponse* error;  
@property(nonatomic) NSString* pid;  
@property(nonatomic) NSString* server;  
@property(nonatomic) SWGDate* processTimeExpired;  
@property(nonatomic) NSString* commentReject;  
- (id) code: (NSString*) code     
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
    callbackMailsFormKeys: (NSArray*) callbackMailsFormKeys     
    error: (MSErrorResponse*) error     
    pid: (NSString*) pid     
    server: (NSString*) server     
    processTimeExpired: (SWGDate*) processTimeExpired     
    commentReject: (NSString*) commentReject;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

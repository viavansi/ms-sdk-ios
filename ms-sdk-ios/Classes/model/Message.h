#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Document.h"
#import "Param.h"
#import "Workflow.h"
#import "Policy.h"
#import "ErrorResponse.h"
#import "Notification.h"


@interface Message : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* userCode;  
@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSString* appCode;  
@property(nonatomic) NSString* version;  
@property(nonatomic) Workflow* workflow;  
@property(nonatomic) Notification* notification;  
@property(nonatomic) Document* document;  
@property(nonatomic) NSArray* metadataList;  
@property(nonatomic) NSArray* policies;  
@property(nonatomic) NSString* callbackURL;  
@property(nonatomic) NSString* callbackMails;  
@property(nonatomic) NSArray* callbackMailsFormKeys;  
@property(nonatomic) ErrorResponse* error;  
@property(nonatomic) NSString* commentReject;  
- (id) code: (NSString*) code     
    userCode: (NSString*) userCode     
    groupCode: (NSString*) groupCode     
    appCode: (NSString*) appCode     
    version: (NSString*) version     
    workflow: (Workflow*) workflow     
    notification: (Notification*) notification     
    document: (Document*) document     
    metadataList: (NSArray*) metadataList     
    policies: (NSArray*) policies     
    callbackURL: (NSString*) callbackURL     
    callbackMails: (NSString*) callbackMails     
    callbackMailsFormKeys: (NSArray*) callbackMailsFormKeys     
    error: (ErrorResponse*) error     
    commentReject: (NSString*) commentReject;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGPolicy.h"
#import "SWGErrorResponse.h"
#import "SWGWorkflow.h"
#import "SWGParam.h"
#import "SWGDocument.h"
#import "SWGNotification.h"

@interface SWGMessage : SWGObject

@property(nonatomic) NSString* code;  

@property(nonatomic) NSString* version;  

@property(nonatomic) SWGWorkflow* workflow;  

@property(nonatomic) SWGNotification* notification;  

@property(nonatomic) SWGDocument* document;  

@property(nonatomic) NSArray* metadataList;  

@property(nonatomic) NSArray* policies;  

@property(nonatomic) NSString* callbackURL;  

@property(nonatomic) SWGErrorResponse* error;  

- (id) code: (NSString*) code
     version: (NSString*) version
     workflow: (SWGWorkflow*) workflow
     notification: (SWGNotification*) notification
     document: (SWGDocument*) document
     metadataList: (NSArray*) metadataList
     policies: (NSArray*) policies
     callbackURL: (NSString*) callbackURL
     error: (SWGErrorResponse*) error;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


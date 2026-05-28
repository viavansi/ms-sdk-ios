#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSJSMatiStep.h"
#import "MSJSMatiDetails.h"


@interface MSJSMati : SWGObject

@property(nonatomic) NSString* eventName;  
@property(nonatomic) MSJSMatiDetails* details;  
@property(nonatomic) NSString* identityStatus;  
@property(nonatomic) NSString* matiDashboardUrl;  
@property(nonatomic) NSDictionary* metadata;  
@property(nonatomic) NSString* resource;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* timestamp;  
@property(nonatomic) MSJSMatiStep* step;  
@property(nonatomic) NSString* flowId;  
- (id) eventName: (NSString*) eventName     
    details: (MSJSMatiDetails*) details     
    identityStatus: (NSString*) identityStatus     
    matiDashboardUrl: (NSString*) matiDashboardUrl     
    metadata: (NSDictionary*) metadata     
    resource: (NSString*) resource     
    status: (NSString*) status     
    timestamp: (NSString*) timestamp     
    step: (MSJSMatiStep*) step     
    flowId: (NSString*) flowId;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSMessageSummary.h"
#import "MSRecipientLink.h"


@interface MSMessageSetResponse : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSArray* links;  
@property(nonatomic) NSString* externalCode;  
@property(nonatomic) NSString* externalStatus;  
@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSString* commentReject;  
@property(nonatomic) NSArray* messages;  
- (id) code: (NSString*) code     
    status: (NSString*) status     
    links: (NSArray*) links     
    externalCode: (NSString*) externalCode     
    externalStatus: (NSString*) externalStatus     
    groupCode: (NSString*) groupCode     
    commentReject: (NSString*) commentReject     
    messages: (NSArray*) messages;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

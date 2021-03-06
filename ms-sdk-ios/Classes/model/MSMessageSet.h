#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSCustomization.h"
#import "MSParam.h"
#import "MSMessage.h"
#import "MSRecipient.h"


@interface MSMessageSet : SWGObject

@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSNumber* expires;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSNumber* retryTime;  
@property(nonatomic) NSArray* recipients;  
@property(nonatomic) MSCustomization* customization;  
@property(nonatomic) NSArray* messages;  
@property(nonatomic) NSArray* metadataList;  
@property(nonatomic) NSNumber* messagesStep;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* _description;  
- (id) groupCode: (NSString*) groupCode     
    expires: (NSNumber*) expires     
    retryTime: (NSNumber*) retryTime     
    recipients: (NSArray*) recipients     
    customization: (MSCustomization*) customization     
    messages: (NSArray*) messages     
    metadataList: (NSArray*) metadataList     
    messagesStep: (NSNumber*) messagesStep     
    title: (NSString*) title     
    _description: (NSString*) _description;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

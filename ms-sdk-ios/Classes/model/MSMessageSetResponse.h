#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSMessageSummary.h"
#import "MSRecipientLink.h"


@interface MSMessageSetResponse : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSArray* links;  
@property(nonatomic) NSArray* messages;  
- (id) code: (NSString*) code     
    status: (NSString*) status     
    links: (NSArray*) links     
    messages: (NSArray*) messages;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

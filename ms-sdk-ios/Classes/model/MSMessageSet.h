#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSCustomization.h"
#import "MSParam.h"
#import "MSMessage.h"
#import "MSRecipient.h"


@interface MSMessageSet : SWGObject

@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSArray* recipients;  
@property(nonatomic) MSCustomization* customization;  
@property(nonatomic) NSArray* messages;  
@property(nonatomic) NSArray* metadataList;  
- (id) groupCode: (NSString*) groupCode     
    recipients: (NSArray*) recipients     
    customization: (MSCustomization*) customization     
    messages: (NSArray*) messages     
    metadataList: (NSArray*) metadataList;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSRecipientLink : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* link;  
@property(nonatomic) NSString* token;  
@property(nonatomic) NSString* status;  
- (id) key: (NSString*) key     
    messageCode: (NSString*) messageCode     
    link: (NSString*) link     
    token: (NSString*) token     
    status: (NSString*) status;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

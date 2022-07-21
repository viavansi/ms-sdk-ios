#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSRecipientLink : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSString* link;  
@property(nonatomic) NSString* token;  
@property(nonatomic) NSString* status;  
- (id) key: (NSString*) key     
    link: (NSString*) link     
    token: (NSString*) token     
    status: (NSString*) status;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

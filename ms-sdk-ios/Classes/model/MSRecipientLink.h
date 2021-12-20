#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSRecipientLink : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSString* link;  
@property(nonatomic) NSString* token;  
- (id) key: (NSString*) key     
    link: (NSString*) link     
    token: (NSString*) token;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

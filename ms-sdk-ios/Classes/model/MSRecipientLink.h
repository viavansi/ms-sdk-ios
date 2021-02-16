#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSRecipientLink : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSString* link;  
- (id) key: (NSString*) key     
    link: (NSString*) link;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

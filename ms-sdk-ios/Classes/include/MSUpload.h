#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface MSUpload : SWGObject

@property(nonatomic) NSString* link;  
@property(nonatomic) NSString* token;  
@property(nonatomic) SWGDate* expires;  
- (id) link: (NSString*) link     
    token: (NSString*) token     
    expires: (SWGDate*) expires;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

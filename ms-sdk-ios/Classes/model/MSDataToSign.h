#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSDataToSign : SWGObject

@property(nonatomic) NSString* algorithm;  /* (since 3.5.0) signature algorith  */
@property(nonatomic) NSString* hash;  /* (since 3.5.0) hash to sign  */
- (id) algorithm: (NSString*) algorithm     
    hash: (NSString*) hash;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

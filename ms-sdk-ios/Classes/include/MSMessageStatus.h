#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSMessageStatus : SWGObject

@property(nonatomic) NSString* status;  
@property(nonatomic) NSNumber* lastUpdated;  /* epoch timestamp in milliseconds  */
- (id) status: (NSString*) status     
    lastUpdated: (NSNumber*) lastUpdated;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

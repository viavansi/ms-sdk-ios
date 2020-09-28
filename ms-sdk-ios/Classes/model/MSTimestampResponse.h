#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSTimestampResponse : SWGObject

@property(nonatomic) NSNumber* timestamp;  
@property(nonatomic) NSString* type;  
- (id) timestamp: (NSNumber*) timestamp     
    type: (NSString*) type;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

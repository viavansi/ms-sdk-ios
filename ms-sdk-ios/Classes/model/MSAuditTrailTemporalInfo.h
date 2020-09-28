#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAuditTrailTemporalInfo : SWGObject

@property(nonatomic) NSString* formattedDate;  
@property(nonatomic) NSString* text;  
- (id) formattedDate: (NSString*) formattedDate     
    text: (NSString*) text;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

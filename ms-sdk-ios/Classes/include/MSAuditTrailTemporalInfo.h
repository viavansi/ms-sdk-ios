#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAuditTrailTemporalInfo : SWGObject

@property(nonatomic) NSString* formattedDate;  
@property(nonatomic) NSString* text;  
@property(nonatomic) NSString* status;  
- (id) formattedDate: (NSString*) formattedDate     
    text: (NSString*) text     
    status: (NSString*) status;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

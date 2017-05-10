#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface MSMessageStatus : SWGObject

@property(nonatomic) NSString* status;  
@property(nonatomic) SWGDate* lastUpdated;  
- (id) status: (NSString*) status     
    lastUpdated: (SWGDate*) lastUpdated;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

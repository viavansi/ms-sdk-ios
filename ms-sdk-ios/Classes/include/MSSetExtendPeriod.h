#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface MSSetExtendPeriod : SWGObject

@property(nonatomic) NSString* setCode;  
@property(nonatomic) SWGDate* expires;  
- (id) setCode: (NSString*) setCode     
    expires: (SWGDate*) expires;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

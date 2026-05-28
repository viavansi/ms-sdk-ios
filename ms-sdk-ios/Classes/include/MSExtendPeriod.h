#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface MSExtendPeriod : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) SWGDate* expires;  
- (id) messageCode: (NSString*) messageCode     
    expires: (SWGDate*) expires;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

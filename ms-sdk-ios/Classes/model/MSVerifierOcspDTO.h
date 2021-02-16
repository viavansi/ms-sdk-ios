#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface MSVerifierOcspDTO : SWGObject

@property(nonatomic) SWGDate* responseDate;  
@property(nonatomic) NSString* responseOcsp;  
- (id) responseDate: (SWGDate*) responseDate     
    responseOcsp: (NSString*) responseOcsp;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

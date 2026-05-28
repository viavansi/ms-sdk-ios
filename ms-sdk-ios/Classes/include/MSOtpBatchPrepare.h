#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSOtpBatchPrepare : SWGObject

@property(nonatomic) NSString* operationCode;  
@property(nonatomic) NSString* expires;  
- (id) operationCode: (NSString*) operationCode     
    expires: (NSString*) expires;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

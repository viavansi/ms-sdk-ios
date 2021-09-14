#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSOtpInfo : SWGObject

@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* recipient;  
- (id) groupCode: (NSString*) groupCode     
    type: (NSString*) type     
    recipient: (NSString*) recipient;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSOtpInfo.h"


@interface MSOtpList : SWGObject

@property(nonatomic) NSArray* otpGroupEvidences;  
- (id) otpGroupEvidences: (NSArray*) otpGroupEvidences;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

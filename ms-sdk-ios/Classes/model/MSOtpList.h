#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSOtpInfo.h"


@interface MSOtpList : SWGObject

@property(nonatomic) NSNumber* allEvidencesOTPGroup;  
@property(nonatomic) NSArray* otpGroupEvidences;  
- (id) allEvidencesOTPGroup: (NSNumber*) allEvidencesOTPGroup     
    otpGroupEvidences: (NSArray*) otpGroupEvidences;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

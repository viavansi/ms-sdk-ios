#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSResetPassword : SWGObject

@property(nonatomic) NSString* mail;  
@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSString* captchaId;  
@property(nonatomic) NSString* remoteIp;  
- (id) mail: (NSString*) mail     
    groupCode: (NSString*) groupCode     
    captchaId: (NSString*) captchaId     
    remoteIp: (NSString*) remoteIp;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

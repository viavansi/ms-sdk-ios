#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAutoRegister : SWGObject

@property(nonatomic) NSString* mail;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* surname;  
@property(nonatomic) NSString* captchaId;  
@property(nonatomic) NSString* remoteIp;  
@property(nonatomic) NSString* invitationCode;  
@property(nonatomic) NSString* mobile;  
- (id) mail: (NSString*) mail     
    name: (NSString*) name     
    surname: (NSString*) surname     
    captchaId: (NSString*) captchaId     
    remoteIp: (NSString*) remoteIp     
    invitationCode: (NSString*) invitationCode     
    mobile: (NSString*) mobile;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

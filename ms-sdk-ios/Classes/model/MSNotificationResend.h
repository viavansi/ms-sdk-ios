#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSNotificationResend : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* email;  
@property(nonatomic) NSString* phone;  
@property(nonatomic) NSString* userCode;  
@property(nonatomic) NSString* deviceCode;  
- (id) messageCode: (NSString*) messageCode     
    email: (NSString*) email     
    phone: (NSString*) phone     
    userCode: (NSString*) userCode     
    deviceCode: (NSString*) deviceCode;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

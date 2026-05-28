#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSNotificationResend : SWGObject

@property(nonatomic) NSString* setCode;  
@property(nonatomic) NSString* recipientKey;  
@property(nonatomic) NSString* email;  
@property(nonatomic) NSString* phone;  
@property(nonatomic) NSString* notificationType;  
- (id) setCode: (NSString*) setCode     
    recipientKey: (NSString*) recipientKey     
    email: (NSString*) email     
    phone: (NSString*) phone     
    notificationType: (NSString*) notificationType;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

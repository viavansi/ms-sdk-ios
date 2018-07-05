#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSNotificationResend : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* email;  
@property(nonatomic) NSString* phone;  
- (id) messageCode: (NSString*) messageCode     
    email: (NSString*) email     
    phone: (NSString*) phone;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

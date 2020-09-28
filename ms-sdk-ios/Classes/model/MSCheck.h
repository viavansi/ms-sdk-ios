#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSSignature.h"


@interface MSCheck : SWGObject

@property(nonatomic) NSString* status;  /* (since 3.4.0, internal) check status  */
@property(nonatomic) NSString* code;  /* (since 3.4.0, internal) identification code  */
@property(nonatomic) NSString* helpText;  /* (since 3.4.0) who approve the check  */
@property(nonatomic) MSSignature* signature;  /* (since 3.4.0) signature info  */
@property(nonatomic) NSString* validateCode;  /* (since 3.4.0) code that allows you to execute the confirmation action  */
@property(nonatomic) NSNumber* expires;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSNumber* date;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSString* commentReject;  /* (since 3.4.0) check rejection reason  */
- (id) status: (NSString*) status     
    code: (NSString*) code     
    helpText: (NSString*) helpText     
    signature: (MSSignature*) signature     
    validateCode: (NSString*) validateCode     
    expires: (NSNumber*) expires     
    date: (NSNumber*) date     
    commentReject: (NSString*) commentReject;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSSignature.h"
#import "SWGDate.h"


@interface MSCheck : SWGObject

@property(nonatomic) NSString* status;  /* (since 3.4.0, internal) check status  */
@property(nonatomic) NSString* code;  /* (since 3.4.0, internal) identification code  */
@property(nonatomic) NSString* helpText;  /* (since 3.4.0) who approve the check  */
@property(nonatomic) MSSignature* signature;  /* (since 3.4.0) signature info  */
@property(nonatomic) NSString* validateCode;  /* (since 3.4.0) code that allows you to execute the confirmation action  */
@property(nonatomic) SWGDate* expires;  /* (since 3.4.0) maximum date on which the petition can be approved  */
@property(nonatomic) NSString* commentReject;  /* (since 3.4.0) check rejection reason  */
- (id) status: (NSString*) status     
    code: (NSString*) code     
    helpText: (NSString*) helpText     
    signature: (MSSignature*) signature     
    validateCode: (NSString*) validateCode     
    expires: (SWGDate*) expires     
    commentReject: (NSString*) commentReject;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSFortressCertificate.h"


@interface MSFortressAccessToken : SWGObject

@property(nonatomic) NSString* access_token;  
@property(nonatomic) NSString* token_type;  
@property(nonatomic) NSNumber* expires_in;  
@property(nonatomic) NSString* user_code;  
@property(nonatomic) MSFortressCertificate* certificate;  
- (id) access_token: (NSString*) access_token     
    token_type: (NSString*) token_type     
    expires_in: (NSNumber*) expires_in     
    user_code: (NSString*) user_code     
    certificate: (MSFortressCertificate*) certificate;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

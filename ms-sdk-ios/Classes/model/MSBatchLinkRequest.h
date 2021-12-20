#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSBatchLinkRequest : SWGObject

@property(nonatomic) NSString* userCode;  
@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSString* redirectURL;  
@property(nonatomic) NSString* otpRecipient;  
@property(nonatomic) NSNumber* index;  
@property(nonatomic) NSNumber* max;  
@property(nonatomic) NSString* signType;  
- (id) userCode: (NSString*) userCode     
    groupCode: (NSString*) groupCode     
    redirectURL: (NSString*) redirectURL     
    otpRecipient: (NSString*) otpRecipient     
    index: (NSNumber*) index     
    max: (NSNumber*) max     
    signType: (NSString*) signType;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

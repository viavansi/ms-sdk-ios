#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSMessageDevice : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* recipientKey;  
@property(nonatomic) NSString* deviceCode;  
@property(nonatomic) NSString* userCode;  
- (id) code: (NSString*) code     
    recipientKey: (NSString*) recipientKey     
    deviceCode: (NSString*) deviceCode     
    userCode: (NSString*) userCode;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

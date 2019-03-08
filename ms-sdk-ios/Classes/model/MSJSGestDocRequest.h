#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSJSGestDocRequest : SWGObject

@property(nonatomic) NSString* appCode;  
@property(nonatomic) NSString* userCode;  
@property(nonatomic) NSString* deviceCode;  
@property(nonatomic) NSString* identifier;  
- (id) appCode: (NSString*) appCode     
    userCode: (NSString*) userCode     
    deviceCode: (NSString*) deviceCode     
    identifier: (NSString*) identifier;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

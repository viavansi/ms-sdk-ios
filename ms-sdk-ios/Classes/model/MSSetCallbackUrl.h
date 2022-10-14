#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSSetCallbackUrl : SWGObject

@property(nonatomic) NSString* setCode;  
@property(nonatomic) NSString* url;  
@property(nonatomic) NSString* authorization;  
- (id) setCode: (NSString*) setCode     
    url: (NSString*) url     
    authorization: (NSString*) authorization;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

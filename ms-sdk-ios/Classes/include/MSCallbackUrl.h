#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSCallbackUrl : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* url;  
@property(nonatomic) NSString* authorization;  
- (id) messageCode: (NSString*) messageCode     
    url: (NSString*) url     
    authorization: (NSString*) authorization;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

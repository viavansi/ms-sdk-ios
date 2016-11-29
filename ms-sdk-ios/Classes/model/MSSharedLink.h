#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSSharedLink : SWGObject

@property(nonatomic) NSString* scheme;  
@property(nonatomic) NSString* token;  
@property(nonatomic) NSString* link;  
@property(nonatomic) NSString* appCode;  
@property(nonatomic) NSString* email;  
- (id) scheme: (NSString*) scheme     
    token: (NSString*) token     
    link: (NSString*) link     
    appCode: (NSString*) appCode     
    email: (NSString*) email;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

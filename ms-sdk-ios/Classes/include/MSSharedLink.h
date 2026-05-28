#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSClientApp.h"


@interface MSSharedLink : SWGObject

@property(nonatomic) NSString* scheme;  
@property(nonatomic) NSString* token;  
@property(nonatomic) NSString* link;  
@property(nonatomic) NSString* appCode;  
@property(nonatomic) NSString* email;  
@property(nonatomic) NSString* subject;  
@property(nonatomic) NSArray* apps;  
@property(nonatomic) NSString* phone;  
- (id) scheme: (NSString*) scheme     
    token: (NSString*) token     
    link: (NSString*) link     
    appCode: (NSString*) appCode     
    email: (NSString*) email     
    subject: (NSString*) subject     
    apps: (NSArray*) apps     
    phone: (NSString*) phone;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSVersion : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* version;  
@property(nonatomic) NSNumber* showUpdate;  
@property(nonatomic) NSNumber* forceUpdate;  
@property(nonatomic) NSString* installURL;  
@property(nonatomic) NSString* installMessage;  
@property(nonatomic) NSString* iconURL;  
@property(nonatomic) NSString* teamId;  
@property(nonatomic) NSString* keyId;  
@property(nonatomic) NSString* authKey;  
@property(nonatomic) NSString* tokenGCM;  
- (id) type: (NSString*) type     
    version: (NSString*) version     
    showUpdate: (NSNumber*) showUpdate     
    forceUpdate: (NSNumber*) forceUpdate     
    installURL: (NSString*) installURL     
    installMessage: (NSString*) installMessage     
    iconURL: (NSString*) iconURL     
    teamId: (NSString*) teamId     
    keyId: (NSString*) keyId     
    authKey: (NSString*) authKey     
    tokenGCM: (NSString*) tokenGCM;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

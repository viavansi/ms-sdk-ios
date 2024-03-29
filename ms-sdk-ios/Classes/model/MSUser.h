#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "MSGroup.h"


@interface MSUser : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* nationalId;  
@property(nonatomic) NSString* email;  
@property(nonatomic) NSString* password;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* surname;  
@property(nonatomic) NSString* rol;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSString* viafirmaKey;  
@property(nonatomic) NSString* viafirmaPassword;  
@property(nonatomic) NSString* viafirmaCertificate;  
@property(nonatomic) NSString* region;  
@property(nonatomic) NSString* pos;  
@property(nonatomic) NSString* confirmToken;  
@property(nonatomic) NSString* changePassToken;  
@property(nonatomic) NSNumber* logDevice;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSNumber* showLastLogin;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSArray* groups;  
@property(nonatomic) NSArray* groupsInfo;  
@property(nonatomic) NSArray* properties;  
@property(nonatomic) NSArray* roles;  
@property(nonatomic) NSString* mobile;  
@property(nonatomic) NSString* channel;  
- (id) code: (NSString*) code     
    nationalId: (NSString*) nationalId     
    email: (NSString*) email     
    password: (NSString*) password     
    name: (NSString*) name     
    surname: (NSString*) surname     
    rol: (NSString*) rol     
    _description: (NSString*) _description     
    viafirmaKey: (NSString*) viafirmaKey     
    viafirmaPassword: (NSString*) viafirmaPassword     
    viafirmaCertificate: (NSString*) viafirmaCertificate     
    region: (NSString*) region     
    pos: (NSString*) pos     
    confirmToken: (NSString*) confirmToken     
    changePassToken: (NSString*) changePassToken     
    logDevice: (NSNumber*) logDevice     
    status: (NSString*) status     
    showLastLogin: (NSNumber*) showLastLogin     
    groups: (NSArray*) groups     
    groupsInfo: (NSArray*) groupsInfo     
    properties: (NSArray*) properties     
    roles: (NSArray*) roles     
    mobile: (NSString*) mobile     
    channel: (NSString*) channel;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

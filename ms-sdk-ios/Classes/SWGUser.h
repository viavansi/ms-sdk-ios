#import <Foundation/Foundation.h>
#import "SWGObject.h"

@interface SWGUser : SWGObject

@property(nonatomic) NSString* code;  

@property(nonatomic) NSString* nationalId;  

@property(nonatomic) NSString* email;  

@property(nonatomic) NSString* password;  

@property(nonatomic) NSString* name;  

@property(nonatomic) NSString* surname;  

@property(nonatomic) NSString* rol;  

@property(nonatomic) NSString* description;  

@property(nonatomic) NSString* viafirmaKey;  

@property(nonatomic) NSString* viafirmaPassword;  

@property(nonatomic) NSString* viafirmaCertificate;  

@property(nonatomic) NSString* region;  

@property(nonatomic) NSString* pos;  

- (id) code: (NSString*) code
     nationalId: (NSString*) nationalId
     email: (NSString*) email
     password: (NSString*) password
     name: (NSString*) name
     surname: (NSString*) surname
     rol: (NSString*) rol
     description: (NSString*) description
     viafirmaKey: (NSString*) viafirmaKey
     viafirmaPassword: (NSString*) viafirmaPassword
     viafirmaCertificate: (NSString*) viafirmaCertificate
     region: (NSString*) region
     pos: (NSString*) pos;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


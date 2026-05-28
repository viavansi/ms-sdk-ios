#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSGroupUserData : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* userName;  
@property(nonatomic) NSString* surname;  
@property(nonatomic) NSString* email;  
@property(nonatomic) NSString* phone;  
@property(nonatomic) NSString* templates;  
@property(nonatomic) NSNumber* sendMail;  
- (id) code: (NSString*) code     
    name: (NSString*) name     
    userName: (NSString*) userName     
    surname: (NSString*) surname     
    email: (NSString*) email     
    phone: (NSString*) phone     
    templates: (NSString*) templates     
    sendMail: (NSNumber*) sendMail;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

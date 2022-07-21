#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSUserSimple : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* nationalId;  
@property(nonatomic) NSString* email;  
@property(nonatomic) NSString* password;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* surname;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* mobile;  
@property(nonatomic) NSString* channel;  
- (id) code: (NSString*) code     
    nationalId: (NSString*) nationalId     
    email: (NSString*) email     
    password: (NSString*) password     
    name: (NSString*) name     
    surname: (NSString*) surname     
    _description: (NSString*) _description     
    status: (NSString*) status     
    mobile: (NSString*) mobile     
    channel: (NSString*) channel;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

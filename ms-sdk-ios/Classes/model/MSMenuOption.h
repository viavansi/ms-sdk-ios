#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSMail.h"


@interface MSMenuOption : SWGObject

@property(nonatomic) NSString* className;  
@property(nonatomic) NSNumber* automatic;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* icon;  
@property(nonatomic) NSString* username;  
@property(nonatomic) NSString* password;  
@property(nonatomic) MSMail* email;  
- (id) className: (NSString*) className     
    automatic: (NSNumber*) automatic     
    name: (NSString*) name     
    icon: (NSString*) icon     
    username: (NSString*) username     
    password: (NSString*) password     
    email: (MSMail*) email;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

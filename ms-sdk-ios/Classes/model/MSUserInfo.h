#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSUserInfo : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* nationalId;  
@property(nonatomic) NSString* email;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* surname;  
@property(nonatomic) NSString* mobile;  
- (id) code: (NSString*) code     
    nationalId: (NSString*) nationalId     
    email: (NSString*) email     
    name: (NSString*) name     
    surname: (NSString*) surname     
    mobile: (NSString*) mobile;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

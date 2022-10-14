#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSEvidenceEdit : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* evidenceCode;  
@property(nonatomic) NSString* email;  
@property(nonatomic) NSString* phone;  
- (id) messageCode: (NSString*) messageCode     
    evidenceCode: (NSString*) evidenceCode     
    email: (NSString*) email     
    phone: (NSString*) phone;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

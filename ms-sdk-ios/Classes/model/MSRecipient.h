#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSRecipient : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSString* phone;  
@property(nonatomic) NSString* mail;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* notificationType;  
@property(nonatomic) NSString* userCode;  
@property(nonatomic) NSString* _id;  
@property(nonatomic) NSString* status;  
- (id) key: (NSString*) key     
    phone: (NSString*) phone     
    mail: (NSString*) mail     
    name: (NSString*) name     
    notificationType: (NSString*) notificationType     
    userCode: (NSString*) userCode     
    _id: (NSString*) _id     
    status: (NSString*) status;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

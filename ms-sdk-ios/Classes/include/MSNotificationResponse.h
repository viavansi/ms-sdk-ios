#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSNotificationResponse : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* setCode;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* type;  
@property(nonatomic) NSNumber* creationDate;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSNumber* updateDate;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSString* target;  
- (id) code: (NSString*) code     
    messageCode: (NSString*) messageCode     
    setCode: (NSString*) setCode     
    status: (NSString*) status     
    type: (NSString*) type     
    creationDate: (NSNumber*) creationDate     
    updateDate: (NSNumber*) updateDate     
    target: (NSString*) target;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

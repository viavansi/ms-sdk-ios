#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSCallbackMail : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* mails;  
@property(nonatomic) NSString* phones;  
- (id) messageCode: (NSString*) messageCode     
    mails: (NSString*) mails     
    phones: (NSString*) phones;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

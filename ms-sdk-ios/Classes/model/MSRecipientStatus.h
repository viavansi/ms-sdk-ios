#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSRecipientStatus : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* status;  
- (id) key: (NSString*) key     
    messageCode: (NSString*) messageCode     
    status: (NSString*) status;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

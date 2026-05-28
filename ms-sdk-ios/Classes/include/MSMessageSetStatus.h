#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSRecipientStatus.h"


@interface MSMessageSetStatus : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSArray* recipientStatus;  
- (id) code: (NSString*) code     
    status: (NSString*) status     
    recipientStatus: (NSArray*) recipientStatus;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

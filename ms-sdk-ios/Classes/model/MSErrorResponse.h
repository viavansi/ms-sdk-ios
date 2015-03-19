#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSErrorResponse : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* message;  
@property(nonatomic) NSString* trace;  
- (id) type: (NSString*) type     
    message: (NSString*) message     
    trace: (NSString*) trace;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

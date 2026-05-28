#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSErrorResponse : SWGObject

@property(nonatomic) NSNumber* code;  
@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* message;  
@property(nonatomic) NSString* trace;  
- (id) code: (NSNumber*) code     
    type: (NSString*) type     
    message: (NSString*) message     
    trace: (NSString*) trace;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

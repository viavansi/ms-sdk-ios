#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSJSMatiStepError : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* message;  
- (id) type: (NSString*) type     
    code: (NSString*) code     
    message: (NSString*) message;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

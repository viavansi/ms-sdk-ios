#import <Foundation/Foundation.h>
#import "SWGObject.h"

@interface SWGErrorResponse : SWGObject

@property(nonatomic) NSNumber* code;  

@property(nonatomic) NSString* status;  

@property(nonatomic) NSString* message;  

@property(nonatomic) NSString* trace;  

- (id) code: (NSNumber*) code
     status: (NSString*) status
     message: (NSString*) message
     trace: (NSString*) trace;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


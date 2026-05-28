#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSJSMatiVerificationFieldData : SWGObject

@property(nonatomic) NSString* value;  
@property(nonatomic) NSNumber* required;  
@property(nonatomic) NSString* label;  
@property(nonatomic) NSString* format;  
- (id) value: (NSString*) value     
    required: (NSNumber*) required     
    label: (NSString*) label     
    format: (NSString*) format;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

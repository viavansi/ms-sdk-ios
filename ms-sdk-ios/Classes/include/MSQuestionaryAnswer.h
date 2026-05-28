#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSQuestionaryAnswer : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* text;  
- (id) code: (NSString*) code     
    text: (NSString*) text;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

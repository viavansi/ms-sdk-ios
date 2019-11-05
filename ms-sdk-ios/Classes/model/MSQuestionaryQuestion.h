#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSQuestionaryAnswer.h"


@interface MSQuestionaryQuestion : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* text;  
@property(nonatomic) NSArray* answers;  
@property(nonatomic) NSString* selectedAnswerCode;  
- (id) code: (NSString*) code     
    text: (NSString*) text     
    answers: (NSArray*) answers     
    selectedAnswerCode: (NSString*) selectedAnswerCode;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

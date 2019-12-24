#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSQuestionaryAnswer.h"


@interface MSQuestionaryQuestion : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* text;  
@property(nonatomic) NSArray* answers;  
@property(nonatomic) NSString* selectedAnswerCode;  
@property(nonatomic) NSString* answerText;  
@property(nonatomic) SWGDate* answerDate;  
@property(nonatomic) NSString* type;  
- (id) code: (NSString*) code     
    text: (NSString*) text     
    answers: (NSArray*) answers     
    selectedAnswerCode: (NSString*) selectedAnswerCode     
    answerText: (NSString*) answerText     
    answerDate: (SWGDate*) answerDate     
    type: (NSString*) type;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

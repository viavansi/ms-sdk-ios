#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSQuestionaryQuestion.h"


@interface MSQuestionary : SWGObject

@property(nonatomic) NSString* regCuestionario;  
@property(nonatomic) NSString* getiDCuestionario;  
@property(nonatomic) NSArray* questions;  
- (id) regCuestionario: (NSString*) regCuestionario     
    getiDCuestionario: (NSString*) getiDCuestionario     
    questions: (NSArray*) questions;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "MSQuestionaryQuestion.h"


@interface MSQuestionary : SWGObject

@property(nonatomic) NSString* regCuestionario;  
@property(nonatomic) NSArray* params;  
@property(nonatomic) NSArray* questions;  
@property(nonatomic) NSString* idcuestionario;  
- (id) regCuestionario: (NSString*) regCuestionario     
    params: (NSArray*) params     
    questions: (NSArray*) questions     
    idcuestionario: (NSString*) idcuestionario;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

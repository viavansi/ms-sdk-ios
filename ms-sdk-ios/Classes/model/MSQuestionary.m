#import "SWGDate.h"
#import "MSQuestionary.h"

@implementation MSQuestionary

@synthesize regCuestionario = _regCuestionario;
@synthesize getiDCuestionario = _getiDCuestionario;
@synthesize questions = _questions;

-(id)regCuestionario: (NSString*) regCuestionario
    getiDCuestionario: (NSString*) getiDCuestionario
    questions: (NSArray*) questions
    
{
    _regCuestionario = regCuestionario;
    _getiDCuestionario = getiDCuestionario;
    _questions = questions;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _regCuestionario = dict[@"regCuestionario"];
        
        _getiDCuestionario = dict[@"getiDCuestionario"];
        
        
        
        id questions_dict = dict[@"questions"];
        
        if([questions_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)questions_dict count]];
            if([(NSArray*)questions_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)questions_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[questions_dict objectAtIndex:i]];
                    MSQuestionaryQuestion* d = [[MSQuestionaryQuestion alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _questions = [[NSArray alloc] initWithArray:objs];
            }
            else
                _questions = [[NSArray alloc] init];
        }
        else {
            _questions = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_regCuestionario != nil) dict[@"regCuestionario"] = _regCuestionario ;
        
    
    
            if(_getiDCuestionario != nil) dict[@"getiDCuestionario"] = _getiDCuestionario ;
        
    
    
    if(_questions != nil){
        if([_questions isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_questions count] ; i++ ) {
				MSQuestionaryQuestion *questions = [[MSQuestionaryQuestion alloc]init];
				questions = [(NSArray*)_questions objectAtIndex:i];
                [array addObject:[(SWGObject*)questions asDictionary]];
            }
            dict[@"questions"] = array;
        }
        else if(_questions && [_questions isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_questions toString];
            if(dateString){
                dict[@"questions"] = dateString;
            }
        }
        else {
        
            if(_questions != nil) dict[@"questions"] = [(SWGObject*)_questions asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

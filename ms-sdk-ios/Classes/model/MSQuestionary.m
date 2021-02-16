#import "SWGDate.h"
#import "MSQuestionary.h"

@implementation MSQuestionary

@synthesize regCuestionario = _regCuestionario;
@synthesize params = _params;
@synthesize questions = _questions;
@synthesize idcuestionario = _idcuestionario;

-(id)regCuestionario: (NSString*) regCuestionario
    params: (NSArray*) params
    questions: (NSArray*) questions
    idcuestionario: (NSString*) idcuestionario
    
{
    _regCuestionario = regCuestionario;
    _params = params;
    _questions = questions;
    _idcuestionario = idcuestionario;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _regCuestionario = dict[@"regCuestionario"];
        
        
        
        id params_dict = dict[@"params"];
        
        if([params_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)params_dict count]];
            if([(NSArray*)params_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)params_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[params_dict objectAtIndex:i]];
                    MSParam* d = [[MSParam alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _params = [[NSArray alloc] initWithArray:objs];
            }
            else
                _params = [[NSArray alloc] init];
        }
        else {
            _params = [[NSArray alloc] init];
        }
        
        
        
        
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
        
        
        _idcuestionario = dict[@"idcuestionario"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_regCuestionario != nil) dict[@"regCuestionario"] = _regCuestionario ;
        
    
    
    if(_params != nil){
        if([_params isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_params count] ; i++ ) {
				MSParam *params = [[MSParam alloc]init];
				params = [(NSArray*)_params objectAtIndex:i];
                [array addObject:[(SWGObject*)params asDictionary]];
            }
            dict[@"params"] = array;
        }
        else if(_params && [_params isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_params toString];
            if(dateString){
                dict[@"params"] = dateString;
            }
        }
        else {
        
            if(_params != nil) dict[@"params"] = [(SWGObject*)_params asDictionary];
        
        }
    }
    
    
    
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
    
    
    
            if(_idcuestionario != nil) dict[@"idcuestionario"] = _idcuestionario ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

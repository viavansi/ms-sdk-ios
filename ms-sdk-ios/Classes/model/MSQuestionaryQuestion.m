#import "SWGDate.h"
#import "MSQuestionaryQuestion.h"

@implementation MSQuestionaryQuestion

@synthesize code = _code;
@synthesize text = _text;
@synthesize answers = _answers;
@synthesize selectedAnswerCode = _selectedAnswerCode;
@synthesize answerText = _answerText;
@synthesize answerDate = _answerDate;
@synthesize type = _type;

-(id)code: (NSString*) code
    text: (NSString*) text
    answers: (NSArray*) answers
    selectedAnswerCode: (NSString*) selectedAnswerCode
    answerText: (NSString*) answerText
    answerDate: (SWGDate*) answerDate
    type: (NSString*) type
    
{
    _code = code;
    _text = text;
    _answers = answers;
    _selectedAnswerCode = selectedAnswerCode;
    _answerText = answerText;
    _answerDate = answerDate;
    _type = type;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _text = dict[@"text"];
        
        
        
        id answers_dict = dict[@"answers"];
        
        if([answers_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)answers_dict count]];
            if([(NSArray*)answers_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)answers_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[answers_dict objectAtIndex:i]];
                    MSQuestionaryAnswer* d = [[MSQuestionaryAnswer alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _answers = [[NSArray alloc] initWithArray:objs];
            }
            else
                _answers = [[NSArray alloc] init];
        }
        else {
            _answers = [[NSArray alloc] init];
        }
        
        
        _selectedAnswerCode = dict[@"selectedAnswerCode"];
        
        _answerText = dict[@"answerText"];
        
        
        
        id answerDate_dict = dict[@"answerDate"];
        
        if(answerDate_dict != nil)
            _answerDate = [[SWGDate  alloc]initWithValues:answerDate_dict];
        
        
        _type = dict[@"type"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_text != nil) dict[@"text"] = _text ;
        
    
    
    if(_answers != nil){
        if([_answers isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_answers count] ; i++ ) {
				MSQuestionaryAnswer *answers = [[MSQuestionaryAnswer alloc]init];
				answers = [(NSArray*)_answers objectAtIndex:i];
                [array addObject:[(SWGObject*)answers asDictionary]];
            }
            dict[@"answers"] = array;
        }
        else if(_answers && [_answers isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_answers toString];
            if(dateString){
                dict[@"answers"] = dateString;
            }
        }
        else {
        
            if(_answers != nil) dict[@"answers"] = [(SWGObject*)_answers asDictionary];
        
        }
    }
    
    
    
            if(_selectedAnswerCode != nil) dict[@"selectedAnswerCode"] = _selectedAnswerCode ;
        
    
    
            if(_answerText != nil) dict[@"answerText"] = _answerText ;
        
    
    
    if(_answerDate != nil){
        if([_answerDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_answerDate count] ; i++ ) {
				SWGDate *answerDate = [[SWGDate alloc]init];
				answerDate = [(NSArray*)_answerDate objectAtIndex:i];
                [array addObject:[(SWGObject*)answerDate asDictionary]];
            }
            dict[@"answerDate"] = array;
        }
        else if(_answerDate && [_answerDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_answerDate toString];
            if(dateString){
                dict[@"answerDate"] = dateString;
            }
        }
        else {
        
            if(_answerDate != nil) dict[@"answerDate"] = [(SWGObject*)_answerDate asDictionary];
        
        }
    }
    
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

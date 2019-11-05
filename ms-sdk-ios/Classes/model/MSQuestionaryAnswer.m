#import "SWGDate.h"
#import "MSQuestionaryAnswer.h"

@implementation MSQuestionaryAnswer

@synthesize code = _code;
@synthesize text = _text;

-(id)code: (NSString*) code
    text: (NSString*) text
    
{
    _code = code;
    _text = text;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _text = dict[@"text"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_text != nil) dict[@"text"] = _text ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSWorkflow.h"

@implementation MSWorkflow

@synthesize code = _code;
@synthesize current = _current;
@synthesize next = _next;
@synthesize history = _history;
@synthesize initiate = _initiate;
@synthesize lastUpdated = _lastUpdated;
@synthesize expires = _expires;
@synthesize type = _type;
@synthesize referenceCode = _referenceCode;
@synthesize step = _step;
@synthesize steps = _steps;
@synthesize nextMessageCode = _nextMessageCode;
@synthesize previousMessageCode = _previousMessageCode;
@synthesize workflowFinished = _workflowFinished;

-(id)code: (NSString*) code
    current: (NSString*) current
    next: (NSString*) next
    history: (NSArray*) history
    initiate: (NSNumber*) initiate
    lastUpdated: (NSNumber*) lastUpdated
    expires: (NSNumber*) expires
    type: (NSString*) type
    referenceCode: (NSString*) referenceCode
    step: (NSNumber*) step
    steps: (NSNumber*) steps
    nextMessageCode: (NSString*) nextMessageCode
    previousMessageCode: (NSString*) previousMessageCode
    workflowFinished: (NSNumber*) workflowFinished
    
{
    _code = code;
    _current = current;
    _next = next;
    _history = history;
    _initiate = initiate;
    _lastUpdated = lastUpdated;
    _expires = expires;
    _type = type;
    _referenceCode = referenceCode;
    _step = step;
    _steps = steps;
    _nextMessageCode = nextMessageCode;
    _previousMessageCode = previousMessageCode;
    _workflowFinished = workflowFinished;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _current = dict[@"current"];
        
        _next = dict[@"next"];
        
        
        
        id history_dict = dict[@"history"];
        
        if([history_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)history_dict count]];
            if([(NSArray*)history_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)history_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[history_dict objectAtIndex:i]];
                    MSEventHistory* d = [[MSEventHistory alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _history = [[NSArray alloc] initWithArray:objs];
            }
            else
                _history = [[NSArray alloc] init];
        }
        else {
            _history = [[NSArray alloc] init];
        }
        
        
        _initiate = dict[@"initiate"];
        
        _lastUpdated = dict[@"lastUpdated"];
        
        _expires = dict[@"expires"];
        
        _type = dict[@"type"];
        
        _referenceCode = dict[@"referenceCode"];
        
        _step = dict[@"step"];
        
        _steps = dict[@"steps"];
        
        _nextMessageCode = dict[@"nextMessageCode"];
        
        _previousMessageCode = dict[@"previousMessageCode"];
        
        _workflowFinished = dict[@"workflowFinished"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_current != nil) dict[@"current"] = _current ;
        
    
    
            if(_next != nil) dict[@"next"] = _next ;
        
    
    
    if(_history != nil){
        if([_history isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_history count] ; i++ ) {
				MSEventHistory *history = [[MSEventHistory alloc]init];
				history = [(NSArray*)_history objectAtIndex:i];
                [array addObject:[(SWGObject*)history asDictionary]];
            }
            dict[@"history"] = array;
        }
        else if(_history && [_history isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_history toString];
            if(dateString){
                dict[@"history"] = dateString;
            }
        }
        else {
        
            if(_history != nil) dict[@"history"] = [(SWGObject*)_history asDictionary];
        
        }
    }
    
    
    
            if(_initiate != nil) dict[@"initiate"] = _initiate ;
        
    
    
            if(_lastUpdated != nil) dict[@"lastUpdated"] = _lastUpdated ;
        
    
    
            if(_expires != nil) dict[@"expires"] = _expires ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_referenceCode != nil) dict[@"referenceCode"] = _referenceCode ;
        
    
    
            if(_step != nil) dict[@"step"] = _step ;
        
    
    
            if(_steps != nil) dict[@"steps"] = _steps ;
        
    
    
            if(_nextMessageCode != nil) dict[@"nextMessageCode"] = _nextMessageCode ;
        
    
    
            if(_previousMessageCode != nil) dict[@"previousMessageCode"] = _previousMessageCode ;
        
    
    
            if(_workflowFinished != nil) dict[@"workflowFinished"] = _workflowFinished ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

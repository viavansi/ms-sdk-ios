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
    initiate: (SWGDate*) initiate
    lastUpdated: (SWGDate*) lastUpdated
    expires: (SWGDate*) expires
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
        
        
        
        
        id initiate_dict = dict[@"initiate"];
        
        if(initiate_dict != nil)
            _initiate = [[SWGDate  alloc]initWithValues:initiate_dict];
        
        
        
        
        id lastUpdated_dict = dict[@"lastUpdated"];
        
        if(lastUpdated_dict != nil)
            _lastUpdated = [[SWGDate  alloc]initWithValues:lastUpdated_dict];
        
        
        
        
        id expires_dict = dict[@"expires"];
        
        if(expires_dict != nil)
            _expires = [[SWGDate  alloc]initWithValues:expires_dict];
        
        
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
    
    
    
    if(_initiate != nil){
        if([_initiate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_initiate count] ; i++ ) {
				SWGDate *initiate = [[SWGDate alloc]init];
				initiate = [(NSArray*)_initiate objectAtIndex:i];
                [array addObject:[(SWGObject*)initiate asDictionary]];
            }
            dict[@"initiate"] = array;
        }
        else if(_initiate && [_initiate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_initiate toString];
            if(dateString){
                dict[@"initiate"] = dateString;
            }
        }
        else {
        
            if(_initiate != nil) dict[@"initiate"] = [(SWGObject*)_initiate asDictionary];
        
        }
    }
    
    
    
    if(_lastUpdated != nil){
        if([_lastUpdated isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_lastUpdated count] ; i++ ) {
				SWGDate *lastUpdated = [[SWGDate alloc]init];
				lastUpdated = [(NSArray*)_lastUpdated objectAtIndex:i];
                [array addObject:[(SWGObject*)lastUpdated asDictionary]];
            }
            dict[@"lastUpdated"] = array;
        }
        else if(_lastUpdated && [_lastUpdated isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_lastUpdated toString];
            if(dateString){
                dict[@"lastUpdated"] = dateString;
            }
        }
        else {
        
            if(_lastUpdated != nil) dict[@"lastUpdated"] = [(SWGObject*)_lastUpdated asDictionary];
        
        }
    }
    
    
    
    if(_expires != nil){
        if([_expires isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_expires count] ; i++ ) {
				SWGDate *expires = [[SWGDate alloc]init];
				expires = [(NSArray*)_expires objectAtIndex:i];
                [array addObject:[(SWGObject*)expires asDictionary]];
            }
            dict[@"expires"] = array;
        }
        else if(_expires && [_expires isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_expires toString];
            if(dateString){
                dict[@"expires"] = dateString;
            }
        }
        else {
        
            if(_expires != nil) dict[@"expires"] = [(SWGObject*)_expires asDictionary];
        
        }
    }
    
    
    
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

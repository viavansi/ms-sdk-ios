#import "SWGDate.h"
#import "MSMessageSetInfo.h"

@implementation MSMessageSetInfo

@synthesize code = _code;
@synthesize status = _status;
@synthesize callbackRedirectURL = _callbackRedirectURL;
@synthesize callbackRedirectURLTargetWindow = _callbackRedirectURLTargetWindow;
@synthesize messages = _messages;

-(id)code: (NSString*) code
    status: (NSString*) status
    callbackRedirectURL: (NSString*) callbackRedirectURL
    callbackRedirectURLTargetWindow: (NSString*) callbackRedirectURLTargetWindow
    messages: (NSArray*) messages
    
{
    _code = code;
    _status = status;
    _callbackRedirectURL = callbackRedirectURL;
    _callbackRedirectURLTargetWindow = callbackRedirectURLTargetWindow;
    _messages = messages;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _status = dict[@"status"];
        
        _callbackRedirectURL = dict[@"callbackRedirectURL"];
        
        _callbackRedirectURLTargetWindow = dict[@"callbackRedirectURLTargetWindow"];
        
        
        
        id messages_dict = dict[@"messages"];
        
        if([messages_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)messages_dict count]];
            if([(NSArray*)messages_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)messages_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[messages_dict objectAtIndex:i]];
                    MSMessageSetList* d = [[MSMessageSetList alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _messages = [[NSArray alloc] initWithArray:objs];
            }
            else
                _messages = [[NSArray alloc] init];
        }
        else {
            _messages = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_callbackRedirectURL != nil) dict[@"callbackRedirectURL"] = _callbackRedirectURL ;
        
    
    
            if(_callbackRedirectURLTargetWindow != nil) dict[@"callbackRedirectURLTargetWindow"] = _callbackRedirectURLTargetWindow ;
        
    
    
    if(_messages != nil){
        if([_messages isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_messages count] ; i++ ) {
				MSMessageSetList *messages = [[MSMessageSetList alloc]init];
				messages = [(NSArray*)_messages objectAtIndex:i];
                [array addObject:[(SWGObject*)messages asDictionary]];
            }
            dict[@"messages"] = array;
        }
        else if(_messages && [_messages isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_messages toString];
            if(dateString){
                dict[@"messages"] = dateString;
            }
        }
        else {
        
            if(_messages != nil) dict[@"messages"] = [(SWGObject*)_messages asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

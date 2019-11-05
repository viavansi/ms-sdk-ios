#import "SWGDate.h"
#import "MSMessageSetResponse.h"

@implementation MSMessageSetResponse

@synthesize code = _code;
@synthesize status = _status;
@synthesize messages = _messages;

-(id)code: (NSString*) code
    status: (NSString*) status
    messages: (NSArray*) messages
    
{
    _code = code;
    _status = status;
    _messages = messages;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _status = dict[@"status"];
        
        
        
        id messages_dict = dict[@"messages"];
        
        if([messages_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)messages_dict count]];
            if([(NSArray*)messages_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)messages_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[messages_dict objectAtIndex:i]];
                    MSMessageSummary* d = [[MSMessageSummary alloc] initWithValues:dict];
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
        
    
    
    if(_messages != nil){
        if([_messages isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_messages count] ; i++ ) {
				MSMessageSummary *messages = [[MSMessageSummary alloc]init];
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

#import "SWGDate.h"
#import "MSMessageSetStatus.h"

@implementation MSMessageSetStatus

@synthesize code = _code;
@synthesize status = _status;
@synthesize recipientStatus = _recipientStatus;

-(id)code: (NSString*) code
    status: (NSString*) status
    recipientStatus: (NSArray*) recipientStatus
    
{
    _code = code;
    _status = status;
    _recipientStatus = recipientStatus;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _status = dict[@"status"];
        
        
        
        id recipientStatus_dict = dict[@"recipientStatus"];
        
        if([recipientStatus_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)recipientStatus_dict count]];
            if([(NSArray*)recipientStatus_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)recipientStatus_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[recipientStatus_dict objectAtIndex:i]];
                    MSRecipientStatus* d = [[MSRecipientStatus alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _recipientStatus = [[NSArray alloc] initWithArray:objs];
            }
            else
                _recipientStatus = [[NSArray alloc] init];
        }
        else {
            _recipientStatus = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
    if(_recipientStatus != nil){
        if([_recipientStatus isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_recipientStatus count] ; i++ ) {
				MSRecipientStatus *recipientStatus = [[MSRecipientStatus alloc]init];
				recipientStatus = [(NSArray*)_recipientStatus objectAtIndex:i];
                [array addObject:[(SWGObject*)recipientStatus asDictionary]];
            }
            dict[@"recipientStatus"] = array;
        }
        else if(_recipientStatus && [_recipientStatus isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_recipientStatus toString];
            if(dateString){
                dict[@"recipientStatus"] = dateString;
            }
        }
        else {
        
            if(_recipientStatus != nil) dict[@"recipientStatus"] = [(SWGObject*)_recipientStatus asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

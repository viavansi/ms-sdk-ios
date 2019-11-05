#import "SWGDate.h"
#import "MSMessageSummary.h"

@implementation MSMessageSummary

@synthesize code = _code;
@synthesize status = _status;
@synthesize transfers = _transfers;

-(id)code: (NSString*) code
    status: (NSString*) status
    transfers: (NSArray*) transfers
    
{
    _code = code;
    _status = status;
    _transfers = transfers;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _status = dict[@"status"];
        
        
        
        id transfers_dict = dict[@"transfers"];
        
        if([transfers_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)transfers_dict count]];
            if([(NSArray*)transfers_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)transfers_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[transfers_dict objectAtIndex:i]];
                    MSJSTransfer* d = [[MSJSTransfer alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _transfers = [[NSArray alloc] initWithArray:objs];
            }
            else
                _transfers = [[NSArray alloc] init];
        }
        else {
            _transfers = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
    if(_transfers != nil){
        if([_transfers isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_transfers count] ; i++ ) {
				MSJSTransfer *transfers = [[MSJSTransfer alloc]init];
				transfers = [(NSArray*)_transfers objectAtIndex:i];
                [array addObject:[(SWGObject*)transfers asDictionary]];
            }
            dict[@"transfers"] = array;
        }
        else if(_transfers && [_transfers isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_transfers toString];
            if(dateString){
                dict[@"transfers"] = dateString;
            }
        }
        else {
        
            if(_transfers != nil) dict[@"transfers"] = [(SWGObject*)_transfers asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

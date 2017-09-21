#import "SWGDate.h"
#import "MSMessageStatus.h"

@implementation MSMessageStatus

@synthesize status = _status;
@synthesize lastUpdated = _lastUpdated;

-(id)status: (NSString*) status
    lastUpdated: (SWGDate*) lastUpdated
    
{
    _status = status;
    _lastUpdated = lastUpdated;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _status = dict[@"status"];
        
        
        
        id lastUpdated_dict = dict[@"lastUpdated"];
        
        if(lastUpdated_dict != nil)
            _lastUpdated = [[SWGDate  alloc]initWithValues:lastUpdated_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
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
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

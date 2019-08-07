#import "SWGDate.h"
#import "MSJSTransfer.h"

@implementation MSJSTransfer

@synthesize name = _name;
@synthesize status = _status;
@synthesize transferDate = _transferDate;
@synthesize error = _error;
@synthesize response = _response;

-(id)name: (NSString*) name
    status: (NSString*) status
    transferDate: (SWGDate*) transferDate
    error: (NSString*) error
    response: (NSString*) response
    
{
    _name = name;
    _status = status;
    _transferDate = transferDate;
    _error = error;
    _response = response;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"];
        
        _status = dict[@"status"];
        
        
        
        id transferDate_dict = dict[@"transferDate"];
        
        if(transferDate_dict != nil)
            _transferDate = [[SWGDate  alloc]initWithValues:transferDate_dict];
        
        
        _error = dict[@"error"];
        
        _response = dict[@"response"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
    if(_transferDate != nil){
        if([_transferDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_transferDate count] ; i++ ) {
				SWGDate *transferDate = [[SWGDate alloc]init];
				transferDate = [(NSArray*)_transferDate objectAtIndex:i];
                [array addObject:[(SWGObject*)transferDate asDictionary]];
            }
            dict[@"transferDate"] = array;
        }
        else if(_transferDate && [_transferDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_transferDate toString];
            if(dateString){
                dict[@"transferDate"] = dateString;
            }
        }
        else {
        
            if(_transferDate != nil) dict[@"transferDate"] = [(SWGObject*)_transferDate asDictionary];
        
        }
    }
    
    
    
            if(_error != nil) dict[@"error"] = _error ;
        
    
    
            if(_response != nil) dict[@"response"] = _response ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

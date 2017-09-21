#import "SWGDate.h"
#import "MSMessagePaginatedList.h"

@implementation MSMessagePaginatedList

@synthesize total = _total;
@synthesize elements = _elements;

-(id)total: (NSNumber*) total
    elements: (NSArray*) elements
    
{
    _total = total;
    _elements = elements;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _total = dict[@"total"];
        
        
        
        id elements_dict = dict[@"elements"];
        
        if([elements_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)elements_dict count]];
            if([(NSArray*)elements_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)elements_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[elements_dict objectAtIndex:i]];
                    MSMessageList* d = [[MSMessageList alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _elements = [[NSArray alloc] initWithArray:objs];
            }
            else
                _elements = [[NSArray alloc] init];
        }
        else {
            _elements = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_total != nil) dict[@"total"] = _total ;
        
    
    
    if(_elements != nil){
        if([_elements isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_elements count] ; i++ ) {
				MSMessageList *elements = [[MSMessageList alloc]init];
				elements = [(NSArray*)_elements objectAtIndex:i];
                [array addObject:[(SWGObject*)elements asDictionary]];
            }
            dict[@"elements"] = array;
        }
        else if(_elements && [_elements isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_elements toString];
            if(dateString){
                dict[@"elements"] = dateString;
            }
        }
        else {
        
            if(_elements != nil) dict[@"elements"] = [(SWGObject*)_elements asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

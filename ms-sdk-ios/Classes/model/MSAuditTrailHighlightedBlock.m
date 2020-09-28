#import "SWGDate.h"
#import "MSAuditTrailHighlightedBlock.h"

@implementation MSAuditTrailHighlightedBlock

@synthesize title = _title;
@synthesize items = _items;

-(id)title: (NSString*) title
    items: (NSArray*) items
    
{
    _title = title;
    _items = items;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _title = dict[@"title"];
        
        
        
        id items_dict = dict[@"items"];
        
        if([items_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)items_dict count]];
            if([(NSArray*)items_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)items_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[items_dict objectAtIndex:i]];
                    MSAuditTrailHighlightedItem* d = [[MSAuditTrailHighlightedItem alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _items = [[NSArray alloc] initWithArray:objs];
            }
            else
                _items = [[NSArray alloc] init];
        }
        else {
            _items = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
    if(_items != nil){
        if([_items isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_items count] ; i++ ) {
				MSAuditTrailHighlightedItem *items = [[MSAuditTrailHighlightedItem alloc]init];
				items = [(NSArray*)_items objectAtIndex:i];
                [array addObject:[(SWGObject*)items asDictionary]];
            }
            dict[@"items"] = array;
        }
        else if(_items && [_items isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_items toString];
            if(dateString){
                dict[@"items"] = dateString;
            }
        }
        else {
        
            if(_items != nil) dict[@"items"] = [(SWGObject*)_items asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

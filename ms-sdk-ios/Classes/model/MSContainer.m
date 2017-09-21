#import "SWGDate.h"
#import "MSContainer.h"

@implementation MSContainer

@synthesize name = _name;
@synthesize title = _title;
@synthesize rows = _rows;

-(id)name: (NSString*) name
    title: (NSString*) title
    rows: (NSArray*) rows
    
{
    _name = name;
    _title = title;
    _rows = rows;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"];
        
        _title = dict[@"title"];
        
        
        
        id rows_dict = dict[@"rows"];
        
        if([rows_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)rows_dict count]];
            if([(NSArray*)rows_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)rows_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[rows_dict objectAtIndex:i]];
                    MSRow* d = [[MSRow alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _rows = [[NSArray alloc] initWithArray:objs];
            }
            else
                _rows = [[NSArray alloc] init];
        }
        else {
            _rows = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
    if(_rows != nil){
        if([_rows isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_rows count] ; i++ ) {
				MSRow *rows = [[MSRow alloc]init];
				rows = [(NSArray*)_rows objectAtIndex:i];
                [array addObject:[(SWGObject*)rows asDictionary]];
            }
            dict[@"rows"] = array;
        }
        else if(_rows && [_rows isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_rows toString];
            if(dateString){
                dict[@"rows"] = dateString;
            }
        }
        else {
        
            if(_rows != nil) dict[@"rows"] = [(SWGObject*)_rows asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

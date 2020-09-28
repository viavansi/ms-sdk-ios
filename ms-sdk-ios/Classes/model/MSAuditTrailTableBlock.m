#import "SWGDate.h"
#import "MSAuditTrailTableBlock.h"

@implementation MSAuditTrailTableBlock

@synthesize title = _title;
@synthesize column1Title = _column1Title;
@synthesize column2Title = _column2Title;
@synthesize column3Title = _column3Title;
@synthesize rows = _rows;

-(id)title: (NSString*) title
    column1Title: (NSString*) column1Title
    column2Title: (NSString*) column2Title
    column3Title: (NSString*) column3Title
    rows: (NSArray*) rows
    
{
    _title = title;
    _column1Title = column1Title;
    _column2Title = column2Title;
    _column3Title = column3Title;
    _rows = rows;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _title = dict[@"title"];
        
        _column1Title = dict[@"column1Title"];
        
        _column2Title = dict[@"column2Title"];
        
        _column3Title = dict[@"column3Title"];
        
        
        
        id rows_dict = dict[@"rows"];
        
        if([rows_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)rows_dict count]];
            if([(NSArray*)rows_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)rows_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[rows_dict objectAtIndex:i]];
                    MSAuditTrailTableRow* d = [[MSAuditTrailTableRow alloc] initWithValues:dict];
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
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(_column1Title != nil) dict[@"column1Title"] = _column1Title ;
        
    
    
            if(_column2Title != nil) dict[@"column2Title"] = _column2Title ;
        
    
    
            if(_column3Title != nil) dict[@"column3Title"] = _column3Title ;
        
    
    
    if(_rows != nil){
        if([_rows isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_rows count] ; i++ ) {
				MSAuditTrailTableRow *rows = [[MSAuditTrailTableRow alloc]init];
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

#import "SWGDate.h"
#import "MSOcrPageResult.h"

@implementation MSOcrPageResult

@synthesize fieldExtractionResults = _fieldExtractionResults;
@synthesize pageKey = _pageKey;

-(id)fieldExtractionResults: (NSArray*) fieldExtractionResults
    pageKey: (NSString*) pageKey
    
{
    _fieldExtractionResults = fieldExtractionResults;
    _pageKey = pageKey;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id fieldExtractionResults_dict = dict[@"fieldExtractionResults"];
        
        if([fieldExtractionResults_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)fieldExtractionResults_dict count]];
            if([(NSArray*)fieldExtractionResults_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)fieldExtractionResults_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[fieldExtractionResults_dict objectAtIndex:i]];
                    MSOcrFieldExtractionResult* d = [[MSOcrFieldExtractionResult alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _fieldExtractionResults = [[NSArray alloc] initWithArray:objs];
            }
            else
                _fieldExtractionResults = [[NSArray alloc] init];
        }
        else {
            _fieldExtractionResults = [[NSArray alloc] init];
        }
        
        
        _pageKey = dict[@"pageKey"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_fieldExtractionResults != nil){
        if([_fieldExtractionResults isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_fieldExtractionResults count] ; i++ ) {
				MSOcrFieldExtractionResult *fieldExtractionResults = [[MSOcrFieldExtractionResult alloc]init];
				fieldExtractionResults = [(NSArray*)_fieldExtractionResults objectAtIndex:i];
                [array addObject:[(SWGObject*)fieldExtractionResults asDictionary]];
            }
            dict[@"fieldExtractionResults"] = array;
        }
        else if(_fieldExtractionResults && [_fieldExtractionResults isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_fieldExtractionResults toString];
            if(dateString){
                dict[@"fieldExtractionResults"] = dateString;
            }
        }
        else {
        
            if(_fieldExtractionResults != nil) dict[@"fieldExtractionResults"] = [(SWGObject*)_fieldExtractionResults asDictionary];
        
        }
    }
    
    
    
            if(_pageKey != nil) dict[@"pageKey"] = _pageKey ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

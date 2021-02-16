#import "SWGDate.h"
#import "MSXMLPdfPageHashes.h"

@implementation MSXMLPdfPageHashes

@synthesize pages = _pages;

-(id)pages: (NSArray*) pages
    
{
    _pages = pages;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id pages_dict = dict[@"pages"];
        
        if([pages_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)pages_dict count]];
            if([(NSArray*)pages_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)pages_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[pages_dict objectAtIndex:i]];
                    MSXMLPdfPageHash* d = [[MSXMLPdfPageHash alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _pages = [[NSArray alloc] initWithArray:objs];
            }
            else
                _pages = [[NSArray alloc] init];
        }
        else {
            _pages = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_pages != nil){
        if([_pages isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_pages count] ; i++ ) {
				MSXMLPdfPageHash *pages = [[MSXMLPdfPageHash alloc]init];
				pages = [(NSArray*)_pages objectAtIndex:i];
                [array addObject:[(SWGObject*)pages asDictionary]];
            }
            dict[@"pages"] = array;
        }
        else if(_pages && [_pages isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_pages toString];
            if(dateString){
                dict[@"pages"] = dateString;
            }
        }
        else {
        
            if(_pages != nil) dict[@"pages"] = [(SWGObject*)_pages asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

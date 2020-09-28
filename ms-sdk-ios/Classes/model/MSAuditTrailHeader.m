#import "SWGDate.h"
#import "MSAuditTrailHeader.h"

@implementation MSAuditTrailHeader

@synthesize mainLogo = _mainLogo;
@synthesize title = _title;
@synthesize text = _text;

-(id)mainLogo: (MSAuditTrailImage*) mainLogo
    title: (NSString*) title
    text: (NSString*) text
    
{
    _mainLogo = mainLogo;
    _title = title;
    _text = text;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id mainLogo_dict = dict[@"mainLogo"];
        
        if(mainLogo_dict != nil)
            _mainLogo = [[MSAuditTrailImage  alloc]initWithValues:mainLogo_dict];
        
        
        _title = dict[@"title"];
        
        _text = dict[@"text"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_mainLogo != nil){
        if([_mainLogo isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_mainLogo count] ; i++ ) {
				MSAuditTrailImage *mainLogo = [[MSAuditTrailImage alloc]init];
				mainLogo = [(NSArray*)_mainLogo objectAtIndex:i];
                [array addObject:[(SWGObject*)mainLogo asDictionary]];
            }
            dict[@"mainLogo"] = array;
        }
        else if(_mainLogo && [_mainLogo isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_mainLogo toString];
            if(dateString){
                dict[@"mainLogo"] = dateString;
            }
        }
        else {
        
            if(_mainLogo != nil) dict[@"mainLogo"] = [(SWGObject*)_mainLogo asDictionary];
        
        }
    }
    
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(_text != nil) dict[@"text"] = _text ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

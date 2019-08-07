#import "SWGDate.h"
#import "MSAcrofieldPosition.h"

@implementation MSAcrofieldPosition

@synthesize rectangle = _rectangle;
@synthesize page = _page;
@synthesize positionMatchId = _positionMatchId;
@synthesize _id = __id;

-(id)rectangle: (MSRectangle*) rectangle
    page: (NSNumber*) page
    positionMatchId: (NSString*) positionMatchId
    _id: (NSString*) _id
    
{
    _rectangle = rectangle;
    _page = page;
    _positionMatchId = positionMatchId;
    __id = _id;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id rectangle_dict = dict[@"rectangle"];
        
        if(rectangle_dict != nil)
            _rectangle = [[MSRectangle  alloc]initWithValues:rectangle_dict];
        
        
        _page = dict[@"page"];
        
        _positionMatchId = dict[@"positionMatchId"];
        
        __id = dict[@"id"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_rectangle != nil){
        if([_rectangle isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_rectangle count] ; i++ ) {
				MSRectangle *rectangle = [[MSRectangle alloc]init];
				rectangle = [(NSArray*)_rectangle objectAtIndex:i];
                [array addObject:[(SWGObject*)rectangle asDictionary]];
            }
            dict[@"rectangle"] = array;
        }
        else if(_rectangle && [_rectangle isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_rectangle toString];
            if(dateString){
                dict[@"rectangle"] = dateString;
            }
        }
        else {
        
            if(_rectangle != nil) dict[@"rectangle"] = [(SWGObject*)_rectangle asDictionary];
        
        }
    }
    
    
    
            if(_page != nil) dict[@"page"] = _page ;
        
    
    
            if(_positionMatchId != nil) dict[@"positionMatchId"] = _positionMatchId ;
        
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

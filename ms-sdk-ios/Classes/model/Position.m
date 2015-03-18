#import "SWGDate.h"
#import "Position.h"

@implementation Position

-(id)rectangle: (Rectangle*) rectangle
    page: (NSNumber*) page
    
{
    _rectangle = rectangle;
    _page = page;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id rectangle_dict = dict[@"rectangle"];
        
        if(rectangle_dict != nil)
            _rectangle = [[Rectangle  alloc]initWithValues:rectangle_dict];
        
        
        _page = dict[@"page"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_rectangle != nil){
        if([_rectangle isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( Rectangle *rectangle in (NSArray*)_rectangle) {
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
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSAcrofieldPosition.h"

@implementation MSAcrofieldPosition

-(id)_id: (NSString*) _id
    page: (NSNumber*) page
    rectangle: (MSRectangle*) rectangle
    
{
    __id = _id;
    _page = page;
    _rectangle = rectangle;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"];
        
        _page = dict[@"page"];
        
        
        
        id rectangle_dict = dict[@"rectangle"];
        
        if(rectangle_dict != nil)
            _rectangle = [[MSRectangle  alloc]initWithValues:rectangle_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(__id != nil) dict[@"id"] = __id ;
        
    
    
            if(_page != nil) dict[@"page"] = _page ;
        
    
    
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
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

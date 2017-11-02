#import "SWGDate.h"
#import "MSEvidenceStroke.h"

@implementation MSEvidenceStroke

@synthesize points = _points;

-(id)points: (NSArray*) points
    
{
    _points = points;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id points_dict = dict[@"points"];
        
        if([points_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)points_dict count]];
            if([(NSArray*)points_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)points_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[points_dict objectAtIndex:i]];
                    MSEvidencePoint* d = [[MSEvidencePoint alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _points = [[NSArray alloc] initWithArray:objs];
            }
            else
                _points = [[NSArray alloc] init];
        }
        else {
            _points = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_points != nil){
        if([_points isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_points count] ; i++ ) {
				MSEvidencePoint *points = [[MSEvidencePoint alloc]init];
				points = [(NSArray*)_points objectAtIndex:i];
                [array addObject:[(SWGObject*)points asDictionary]];
            }
            dict[@"points"] = array;
        }
        else if(_points && [_points isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_points toString];
            if(dateString){
                dict[@"points"] = dateString;
            }
        }
        else {
        
            if(_points != nil) dict[@"points"] = [(SWGObject*)_points asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

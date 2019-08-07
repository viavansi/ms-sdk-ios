#import "SWGDate.h"
#import "MSStamper.h"

@implementation MSStamper

@synthesize type = _type;
@synthesize rotation = _rotation;
@synthesize width = _width;
@synthesize height = _height;
@synthesize getxAxis = _getxAxis;
@synthesize getyAxis = _getyAxis;
@synthesize page = _page;
@synthesize imageBase64 = _imageBase64;
@synthesize positionsKey = _positionsKey;
@synthesize positionsMatch = _positionsMatch;

-(id)type: (NSString*) type
    rotation: (NSString*) rotation
    width: (NSNumber*) width
    height: (NSNumber*) height
    getxAxis: (NSNumber*) getxAxis
    getyAxis: (NSNumber*) getyAxis
    page: (NSNumber*) page
    imageBase64: (NSString*) imageBase64
    positionsKey: (NSString*) positionsKey
    positionsMatch: (NSArray*) positionsMatch
    
{
    _type = type;
    _rotation = rotation;
    _width = width;
    _height = height;
    _getxAxis = getxAxis;
    _getyAxis = getyAxis;
    _page = page;
    _imageBase64 = imageBase64;
    _positionsKey = positionsKey;
    _positionsMatch = positionsMatch;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _rotation = dict[@"rotation"];
        
        _width = dict[@"width"];
        
        _height = dict[@"height"];
        
        _getxAxis = dict[@"getxAxis"];
        
        _getyAxis = dict[@"getyAxis"];
        
        _page = dict[@"page"];
        
        _imageBase64 = dict[@"imageBase64"];
        
        _positionsKey = dict[@"positionsKey"];
        
        
        
        id positionsMatch_dict = dict[@"positionsMatch"];
        
        if([positionsMatch_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)positionsMatch_dict count]];
            if([(NSArray*)positionsMatch_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)positionsMatch_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[positionsMatch_dict objectAtIndex:i]];
                    MSPositionsMatch* d = [[MSPositionsMatch alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _positionsMatch = [[NSArray alloc] initWithArray:objs];
            }
            else
                _positionsMatch = [[NSArray alloc] init];
        }
        else {
            _positionsMatch = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_rotation != nil) dict[@"rotation"] = _rotation ;
        
    
    
            if(_width != nil) dict[@"width"] = _width ;
        
    
    
            if(_height != nil) dict[@"height"] = _height ;
        
    
    
            if(_getxAxis != nil) dict[@"getxAxis"] = _getxAxis ;
        
    
    
            if(_getyAxis != nil) dict[@"getyAxis"] = _getyAxis ;
        
    
    
            if(_page != nil) dict[@"page"] = _page ;
        
    
    
            if(_imageBase64 != nil) dict[@"imageBase64"] = _imageBase64 ;
        
    
    
            if(_positionsKey != nil) dict[@"positionsKey"] = _positionsKey ;
        
    
    
    if(_positionsMatch != nil){
        if([_positionsMatch isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_positionsMatch count] ; i++ ) {
				MSPositionsMatch *positionsMatch = [[MSPositionsMatch alloc]init];
				positionsMatch = [(NSArray*)_positionsMatch objectAtIndex:i];
                [array addObject:[(SWGObject*)positionsMatch asDictionary]];
            }
            dict[@"positionsMatch"] = array;
        }
        else if(_positionsMatch && [_positionsMatch isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_positionsMatch toString];
            if(dateString){
                dict[@"positionsMatch"] = dateString;
            }
        }
        else {
        
            if(_positionsMatch != nil) dict[@"positionsMatch"] = [(SWGObject*)_positionsMatch asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

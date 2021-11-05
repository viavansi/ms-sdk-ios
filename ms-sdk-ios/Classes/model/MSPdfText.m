#import "SWGDate.h"
#import "MSPdfText.h"

@implementation MSPdfText

@synthesize positions = _positions;
@synthesize positionsMatch = _positionsMatch;
@synthesize size = _size;

-(id)positions: (NSArray*) positions
    positionsMatch: (NSArray*) positionsMatch
    size: (NSNumber*) size
    
{
    _positions = positions;
    _positionsMatch = positionsMatch;
    _size = size;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id positions_dict = dict[@"positions"];
        
        if([positions_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)positions_dict count]];
            if([(NSArray*)positions_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)positions_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[positions_dict objectAtIndex:i]];
                    MSPosition* d = [[MSPosition alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _positions = [[NSArray alloc] initWithArray:objs];
            }
            else
                _positions = [[NSArray alloc] init];
        }
        else {
            _positions = [[NSArray alloc] init];
        }
        
        
        
        
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
        
        
        _size = dict[@"size"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_positions != nil){
        if([_positions isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_positions count] ; i++ ) {
				MSPosition *positions = [[MSPosition alloc]init];
				positions = [(NSArray*)_positions objectAtIndex:i];
                [array addObject:[(SWGObject*)positions asDictionary]];
            }
            dict[@"positions"] = array;
        }
        else if(_positions && [_positions isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_positions toString];
            if(dateString){
                dict[@"positions"] = dateString;
            }
        }
        else {
        
            if(_positions != nil) dict[@"positions"] = [(SWGObject*)_positions asDictionary];
        
        }
    }
    
    
    
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
    
    
    
            if(_size != nil) dict[@"size"] = _size ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

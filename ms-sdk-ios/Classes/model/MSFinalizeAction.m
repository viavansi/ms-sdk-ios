#import "SWGDate.h"
#import "MSFinalizeAction.h"

@implementation MSFinalizeAction

@synthesize type = _type;
@synthesize paramList = _paramList;

-(id)type: (NSString*) type
    paramList: (NSArray*) paramList
    
{
    _type = type;
    _paramList = paramList;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        
        
        id paramList_dict = dict[@"paramList"];
        
        if([paramList_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)paramList_dict count]];
            if([(NSArray*)paramList_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)paramList_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[paramList_dict objectAtIndex:i]];
                    MSParam* d = [[MSParam alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _paramList = [[NSArray alloc] initWithArray:objs];
            }
            else
                _paramList = [[NSArray alloc] init];
        }
        else {
            _paramList = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
    if(_paramList != nil){
        if([_paramList isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_paramList count] ; i++ ) {
				MSParam *paramList = [[MSParam alloc]init];
				paramList = [(NSArray*)_paramList objectAtIndex:i];
                [array addObject:[(SWGObject*)paramList asDictionary]];
            }
            dict[@"paramList"] = array;
        }
        else if(_paramList && [_paramList isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_paramList toString];
            if(dateString){
                dict[@"paramList"] = dateString;
            }
        }
        else {
        
            if(_paramList != nil) dict[@"paramList"] = [(SWGObject*)_paramList asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

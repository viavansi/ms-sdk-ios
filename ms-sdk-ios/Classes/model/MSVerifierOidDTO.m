#import "SWGDate.h"
#import "MSVerifierOidDTO.h"

@implementation MSVerifierOidDTO

@synthesize oid = _oid;
@synthesize _description = __description;
@synthesize values = _values;
@synthesize childOids = _childOids;
@synthesize objectIdentifier = _objectIdentifier;

-(id)oid: (NSString*) oid
    _description: (NSString*) _description
    values: (NSArray*) values
    childOids: (NSArray*) childOids
    objectIdentifier: (NSNumber*) objectIdentifier
    
{
    _oid = oid;
    __description = _description;
    _values = values;
    _childOids = childOids;
    _objectIdentifier = objectIdentifier;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _oid = dict[@"oid"];
        
        __description = dict[@"description"];
        
        _values = dict[@"values"];
        
        
        
        id childOids_dict = dict[@"childOids"];
        
        if([childOids_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)childOids_dict count]];
            if([(NSArray*)childOids_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)childOids_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[childOids_dict objectAtIndex:i]];
                    MSVerifierOidDTO* d = [[MSVerifierOidDTO alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _childOids = [[NSArray alloc] initWithArray:objs];
            }
            else
                _childOids = [[NSArray alloc] init];
        }
        else {
            _childOids = [[NSArray alloc] init];
        }
        
        
        _objectIdentifier = dict[@"objectIdentifier"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_oid != nil) dict[@"oid"] = _oid ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_values != nil) dict[@"values"] = _values ;
        
    
    
    if(_childOids != nil){
        if([_childOids isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_childOids count] ; i++ ) {
				MSVerifierOidDTO *childOids = [[MSVerifierOidDTO alloc]init];
				childOids = [(NSArray*)_childOids objectAtIndex:i];
                [array addObject:[(SWGObject*)childOids asDictionary]];
            }
            dict[@"childOids"] = array;
        }
        else if(_childOids && [_childOids isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_childOids toString];
            if(dateString){
                dict[@"childOids"] = dateString;
            }
        }
        else {
        
            if(_childOids != nil) dict[@"childOids"] = [(SWGObject*)_childOids asDictionary];
        
        }
    }
    
    
    
            if(_objectIdentifier != nil) dict[@"objectIdentifier"] = _objectIdentifier ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

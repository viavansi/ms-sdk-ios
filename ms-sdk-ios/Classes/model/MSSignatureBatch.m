#import "SWGDate.h"
#import "MSSignatureBatch.h"

@implementation MSSignatureBatch

@synthesize signatures = _signatures;

-(id)signatures: (NSArray*) signatures
    
{
    _signatures = signatures;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id signatures_dict = dict[@"signatures"];
        
        if([signatures_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)signatures_dict count]];
            if([(NSArray*)signatures_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)signatures_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[signatures_dict objectAtIndex:i]];
                    MSSignature* d = [[MSSignature alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _signatures = [[NSArray alloc] initWithArray:objs];
            }
            else
                _signatures = [[NSArray alloc] init];
        }
        else {
            _signatures = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_signatures != nil){
        if([_signatures isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_signatures count] ; i++ ) {
				MSSignature *signatures = [[MSSignature alloc]init];
				signatures = [(NSArray*)_signatures objectAtIndex:i];
                [array addObject:[(SWGObject*)signatures asDictionary]];
            }
            dict[@"signatures"] = array;
        }
        else if(_signatures && [_signatures isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_signatures toString];
            if(dateString){
                dict[@"signatures"] = dateString;
            }
        }
        else {
        
            if(_signatures != nil) dict[@"signatures"] = [(SWGObject*)_signatures asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

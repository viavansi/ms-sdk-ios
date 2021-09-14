#import "SWGDate.h"
#import "MSPrepareSignatureBatch.h"

@implementation MSPrepareSignatureBatch

@synthesize prepareSignatures = _prepareSignatures;

-(id)prepareSignatures: (NSArray*) prepareSignatures
    
{
    _prepareSignatures = prepareSignatures;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id prepareSignatures_dict = dict[@"prepareSignatures"];
        
        if([prepareSignatures_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)prepareSignatures_dict count]];
            if([(NSArray*)prepareSignatures_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)prepareSignatures_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[prepareSignatures_dict objectAtIndex:i]];
                    MSPrepareSignature* d = [[MSPrepareSignature alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _prepareSignatures = [[NSArray alloc] initWithArray:objs];
            }
            else
                _prepareSignatures = [[NSArray alloc] init];
        }
        else {
            _prepareSignatures = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_prepareSignatures != nil){
        if([_prepareSignatures isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_prepareSignatures count] ; i++ ) {
				MSPrepareSignature *prepareSignatures = [[MSPrepareSignature alloc]init];
				prepareSignatures = [(NSArray*)_prepareSignatures objectAtIndex:i];
                [array addObject:[(SWGObject*)prepareSignatures asDictionary]];
            }
            dict[@"prepareSignatures"] = array;
        }
        else if(_prepareSignatures && [_prepareSignatures isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_prepareSignatures toString];
            if(dateString){
                dict[@"prepareSignatures"] = dateString;
            }
        }
        else {
        
            if(_prepareSignatures != nil) dict[@"prepareSignatures"] = [(SWGObject*)_prepareSignatures asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

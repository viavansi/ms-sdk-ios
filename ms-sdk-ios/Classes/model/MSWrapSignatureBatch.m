#import "SWGDate.h"
#import "MSWrapSignatureBatch.h"

@implementation MSWrapSignatureBatch

@synthesize wrapSignatures = _wrapSignatures;
@synthesize recipientKey = _recipientKey;

-(id)wrapSignatures: (NSArray*) wrapSignatures
    recipientKey: (NSString*) recipientKey
    
{
    _wrapSignatures = wrapSignatures;
    _recipientKey = recipientKey;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id wrapSignatures_dict = dict[@"wrapSignatures"];
        
        if([wrapSignatures_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)wrapSignatures_dict count]];
            if([(NSArray*)wrapSignatures_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)wrapSignatures_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[wrapSignatures_dict objectAtIndex:i]];
                    MSWrapSignature* d = [[MSWrapSignature alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _wrapSignatures = [[NSArray alloc] initWithArray:objs];
            }
            else
                _wrapSignatures = [[NSArray alloc] init];
        }
        else {
            _wrapSignatures = [[NSArray alloc] init];
        }
        
        
        _recipientKey = dict[@"recipientKey"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_wrapSignatures != nil){
        if([_wrapSignatures isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_wrapSignatures count] ; i++ ) {
				MSWrapSignature *wrapSignatures = [[MSWrapSignature alloc]init];
				wrapSignatures = [(NSArray*)_wrapSignatures objectAtIndex:i];
                [array addObject:[(SWGObject*)wrapSignatures asDictionary]];
            }
            dict[@"wrapSignatures"] = array;
        }
        else if(_wrapSignatures && [_wrapSignatures isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_wrapSignatures toString];
            if(dateString){
                dict[@"wrapSignatures"] = dateString;
            }
        }
        else {
        
            if(_wrapSignatures != nil) dict[@"wrapSignatures"] = [(SWGObject*)_wrapSignatures asDictionary];
        
        }
    }
    
    
    
            if(_recipientKey != nil) dict[@"recipientKey"] = _recipientKey ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

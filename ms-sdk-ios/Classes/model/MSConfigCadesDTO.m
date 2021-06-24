#import "SWGDate.h"
#import "MSConfigCadesDTO.h"

@implementation MSConfigCadesDTO

@synthesize toCounterSignSignatureValueId = _toCounterSignSignatureValueId;

-(id)toCounterSignSignatureValueId: (NSString*) toCounterSignSignatureValueId
    
{
    _toCounterSignSignatureValueId = toCounterSignSignatureValueId;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _toCounterSignSignatureValueId = dict[@"toCounterSignSignatureValueId"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_toCounterSignSignatureValueId != nil) dict[@"toCounterSignSignatureValueId"] = _toCounterSignSignatureValueId ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

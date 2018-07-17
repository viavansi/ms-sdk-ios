#import "SWGDate.h"
#import "MSDataToSign.h"

@implementation MSDataToSign

@synthesize algorithm = _algorithm;
@synthesize hash = _hash;
@synthesize idSign = _idSign;

-(id)algorithm: (NSString*) algorithm
    hash: (NSString*) hash
    idSign: (NSString*) idSign
    
{
    _algorithm = algorithm;
    _hash = hash;
    _idSign = idSign;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _algorithm = dict[@"algorithm"];
        
        _hash = dict[@"hash"];
        
        _idSign = dict[@"idSign"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_algorithm != nil) dict[@"algorithm"] = _algorithm ;
        
    
    
            if(_hash != nil) dict[@"hash"] = _hash ;
        
    
    
            if(_idSign != nil) dict[@"idSign"] = _idSign ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

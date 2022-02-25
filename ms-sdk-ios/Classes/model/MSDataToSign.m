#import "SWGDate.h"
#import "MSDataToSign.h"

@implementation MSDataToSign

@synthesize algorithm = _algorithm;
@synthesize hash = _hash;
@synthesize idSign = _idSign;
@synthesize messageCode = _messageCode;

-(id)algorithm: (NSString*) algorithm
    hash: (NSString*) hash
    idSign: (NSString*) idSign
    messageCode: (NSString*) messageCode
    
{
    _algorithm = algorithm;
    _hash = hash;
    _idSign = idSign;
    _messageCode = messageCode;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _algorithm = dict[@"algorithm"];
        
        _hash = dict[@"hash"];
        
        _idSign = dict[@"idSign"];
        
        _messageCode = dict[@"messageCode"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_algorithm != nil) dict[@"algorithm"] = _algorithm ;
        
    
    
            if(_hash != nil) dict[@"hash"] = _hash ;
        
    
    
            if(_idSign != nil) dict[@"idSign"] = _idSign ;
        
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

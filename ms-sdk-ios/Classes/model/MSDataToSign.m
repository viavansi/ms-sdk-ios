#import "SWGDate.h"
#import "MSDataToSign.h"

@implementation MSDataToSign

@synthesize algorithm = _algorithm;
@synthesize hash = _hash;
@synthesize idSign = _idSign;
@synthesize messageCode = _messageCode;
@synthesize signatureCode = _signatureCode;

-(id)algorithm: (NSString*) algorithm
    hash: (NSString*) hash
    idSign: (NSString*) idSign
    messageCode: (NSString*) messageCode
    signatureCode: (NSString*) signatureCode
    
{
    _algorithm = algorithm;
    _hash = hash;
    _idSign = idSign;
    _messageCode = messageCode;
    _signatureCode = signatureCode;
    

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
        
        _signatureCode = dict[@"signatureCode"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_algorithm != nil) dict[@"algorithm"] = _algorithm ;
        
    
    
            if(_hash != nil) dict[@"hash"] = _hash ;
        
    
    
            if(_idSign != nil) dict[@"idSign"] = _idSign ;
        
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_signatureCode != nil) dict[@"signatureCode"] = _signatureCode ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSPrepareSignature.h"

@implementation MSPrepareSignature

@synthesize messageCode = _messageCode;
@synthesize signatureCode = _signatureCode;
@synthesize publicKey = _publicKey;

-(id)messageCode: (NSString*) messageCode
    signatureCode: (NSString*) signatureCode
    publicKey: (NSString*) publicKey
    
{
    _messageCode = messageCode;
    _signatureCode = signatureCode;
    _publicKey = publicKey;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        _signatureCode = dict[@"signatureCode"];
        
        _publicKey = dict[@"publicKey"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_signatureCode != nil) dict[@"signatureCode"] = _signatureCode ;
        
    
    
            if(_publicKey != nil) dict[@"publicKey"] = _publicKey ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

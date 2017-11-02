#import "SWGDate.h"
#import "MSWrapSignature.h"

@implementation MSWrapSignature

@synthesize signatureCode = _signatureCode;
@synthesize publicKey = _publicKey;
@synthesize messageCode = _messageCode;
@synthesize signedDataBase64 = _signedDataBase64;

-(id)signatureCode: (NSString*) signatureCode
    publicKey: (NSString*) publicKey
    messageCode: (NSString*) messageCode
    signedDataBase64: (NSString*) signedDataBase64
    
{
    _signatureCode = signatureCode;
    _publicKey = publicKey;
    _messageCode = messageCode;
    _signedDataBase64 = signedDataBase64;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _signatureCode = dict[@"signatureCode"];
        
        _publicKey = dict[@"publicKey"];
        
        _messageCode = dict[@"messageCode"];
        
        _signedDataBase64 = dict[@"signedDataBase64"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_signatureCode != nil) dict[@"signatureCode"] = _signatureCode ;
        
    
    
            if(_publicKey != nil) dict[@"publicKey"] = _publicKey ;
        
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_signedDataBase64 != nil) dict[@"signedDataBase64"] = _signedDataBase64 ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

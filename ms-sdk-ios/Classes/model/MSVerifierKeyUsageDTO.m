#import "SWGDate.h"
#import "MSVerifierKeyUsageDTO.h"

@implementation MSVerifierKeyUsageDTO

@synthesize digitalSignature = _digitalSignature;
@synthesize nonRepudiation = _nonRepudiation;
@synthesize keyEncipherment = _keyEncipherment;
@synthesize dataEncipherment = _dataEncipherment;
@synthesize keyAgreement = _keyAgreement;
@synthesize keyCertSign = _keyCertSign;
@synthesize iscRLSign = _iscRLSign;
@synthesize encipherOnly = _encipherOnly;
@synthesize decipherOnly = _decipherOnly;

-(id)digitalSignature: (NSNumber*) digitalSignature
    nonRepudiation: (NSNumber*) nonRepudiation
    keyEncipherment: (NSNumber*) keyEncipherment
    dataEncipherment: (NSNumber*) dataEncipherment
    keyAgreement: (NSNumber*) keyAgreement
    keyCertSign: (NSNumber*) keyCertSign
    iscRLSign: (NSNumber*) iscRLSign
    encipherOnly: (NSNumber*) encipherOnly
    decipherOnly: (NSNumber*) decipherOnly
    
{
    _digitalSignature = digitalSignature;
    _nonRepudiation = nonRepudiation;
    _keyEncipherment = keyEncipherment;
    _dataEncipherment = dataEncipherment;
    _keyAgreement = keyAgreement;
    _keyCertSign = keyCertSign;
    _iscRLSign = iscRLSign;
    _encipherOnly = encipherOnly;
    _decipherOnly = decipherOnly;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _digitalSignature = dict[@"digitalSignature"];
        
        _nonRepudiation = dict[@"nonRepudiation"];
        
        _keyEncipherment = dict[@"keyEncipherment"];
        
        _dataEncipherment = dict[@"dataEncipherment"];
        
        _keyAgreement = dict[@"keyAgreement"];
        
        _keyCertSign = dict[@"keyCertSign"];
        
        _iscRLSign = dict[@"iscRLSign"];
        
        _encipherOnly = dict[@"encipherOnly"];
        
        _decipherOnly = dict[@"decipherOnly"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_digitalSignature != nil) dict[@"digitalSignature"] = _digitalSignature ;
        
    
    
            if(_nonRepudiation != nil) dict[@"nonRepudiation"] = _nonRepudiation ;
        
    
    
            if(_keyEncipherment != nil) dict[@"keyEncipherment"] = _keyEncipherment ;
        
    
    
            if(_dataEncipherment != nil) dict[@"dataEncipherment"] = _dataEncipherment ;
        
    
    
            if(_keyAgreement != nil) dict[@"keyAgreement"] = _keyAgreement ;
        
    
    
            if(_keyCertSign != nil) dict[@"keyCertSign"] = _keyCertSign ;
        
    
    
            if(_iscRLSign != nil) dict[@"iscRLSign"] = _iscRLSign ;
        
    
    
            if(_encipherOnly != nil) dict[@"encipherOnly"] = _encipherOnly ;
        
    
    
            if(_decipherOnly != nil) dict[@"decipherOnly"] = _decipherOnly ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

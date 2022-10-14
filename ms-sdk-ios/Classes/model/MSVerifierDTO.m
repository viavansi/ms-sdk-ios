#import "SWGDate.h"
#import "MSVerifierDTO.h"

@implementation MSVerifierDTO

@synthesize validRevocationSource = _validRevocationSource;
@synthesize method = _method;
@synthesize ocspResponse = _ocspResponse;
@synthesize crlResponse = _crlResponse;
@synthesize revocationDate = _revocationDate;
@synthesize revocationReason = _revocationReason;
@synthesize url = _url;
@synthesize info = _info;
@synthesize revoked = _revoked;
@synthesize disabled = _disabled;

-(id)validRevocationSource: (NSNumber*) validRevocationSource
    method: (NSString*) method
    ocspResponse: (MSVerifierOcspDTO*) ocspResponse
    crlResponse: (MSVerifierCrlDTO*) crlResponse
    revocationDate: (SWGDate*) revocationDate
    revocationReason: (NSString*) revocationReason
    url: (NSString*) url
    info: (NSArray*) info
    revoked: (NSNumber*) revoked
    disabled: (NSNumber*) disabled
    
{
    _validRevocationSource = validRevocationSource;
    _method = method;
    _ocspResponse = ocspResponse;
    _crlResponse = crlResponse;
    _revocationDate = revocationDate;
    _revocationReason = revocationReason;
    _url = url;
    _info = info;
    _revoked = revoked;
    _disabled = disabled;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _validRevocationSource = dict[@"validRevocationSource"];
        
        _method = dict[@"method"];
        
        
        
        id ocspResponse_dict = dict[@"ocspResponse"];
        
        if(ocspResponse_dict != nil)
            _ocspResponse = [[MSVerifierOcspDTO  alloc]initWithValues:ocspResponse_dict];
        
        
        
        
        id crlResponse_dict = dict[@"crlResponse"];
        
        if(crlResponse_dict != nil)
            _crlResponse = [[MSVerifierCrlDTO  alloc]initWithValues:crlResponse_dict];
        
        
        
        
        id revocationDate_dict = dict[@"revocationDate"];
        
        if(revocationDate_dict != nil)
            _revocationDate = [[SWGDate  alloc]initWithValues:revocationDate_dict];
        
        
        _revocationReason = dict[@"revocationReason"];
        
        _url = dict[@"url"];
        
        _info = dict[@"info"];
        
        _revoked = dict[@"revoked"];
        
        _disabled = dict[@"disabled"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_validRevocationSource != nil) dict[@"validRevocationSource"] = _validRevocationSource ;
        
    
    
            if(_method != nil) dict[@"method"] = _method ;
        
    
    
    if(_ocspResponse != nil){
        if([_ocspResponse isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_ocspResponse count] ; i++ ) {
				MSVerifierOcspDTO *ocspResponse = [[MSVerifierOcspDTO alloc]init];
				ocspResponse = [(NSArray*)_ocspResponse objectAtIndex:i];
                [array addObject:[(SWGObject*)ocspResponse asDictionary]];
            }
            dict[@"ocspResponse"] = array;
        }
        else if(_ocspResponse && [_ocspResponse isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_ocspResponse toString];
            if(dateString){
                dict[@"ocspResponse"] = dateString;
            }
        }
        else {
        
            if(_ocspResponse != nil) dict[@"ocspResponse"] = [(SWGObject*)_ocspResponse asDictionary];
        
        }
    }
    
    
    
    if(_crlResponse != nil){
        if([_crlResponse isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_crlResponse count] ; i++ ) {
				MSVerifierCrlDTO *crlResponse = [[MSVerifierCrlDTO alloc]init];
				crlResponse = [(NSArray*)_crlResponse objectAtIndex:i];
                [array addObject:[(SWGObject*)crlResponse asDictionary]];
            }
            dict[@"crlResponse"] = array;
        }
        else if(_crlResponse && [_crlResponse isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_crlResponse toString];
            if(dateString){
                dict[@"crlResponse"] = dateString;
            }
        }
        else {
        
            if(_crlResponse != nil) dict[@"crlResponse"] = [(SWGObject*)_crlResponse asDictionary];
        
        }
    }
    
    
    
    if(_revocationDate != nil){
        if([_revocationDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_revocationDate count] ; i++ ) {
				SWGDate *revocationDate = [[SWGDate alloc]init];
				revocationDate = [(NSArray*)_revocationDate objectAtIndex:i];
                [array addObject:[(SWGObject*)revocationDate asDictionary]];
            }
            dict[@"revocationDate"] = array;
        }
        else if(_revocationDate && [_revocationDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_revocationDate toString];
            if(dateString){
                dict[@"revocationDate"] = dateString;
            }
        }
        else {
        
            if(_revocationDate != nil) dict[@"revocationDate"] = [(SWGObject*)_revocationDate asDictionary];
        
        }
    }
    
    
    
            if(_revocationReason != nil) dict[@"revocationReason"] = _revocationReason ;
        
    
    
            if(_url != nil) dict[@"url"] = _url ;
        
    
    
            if(_info != nil) dict[@"info"] = _info ;
        
    
    
            if(_revoked != nil) dict[@"revoked"] = _revoked ;
        
    
    
            if(_disabled != nil) dict[@"disabled"] = _disabled ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

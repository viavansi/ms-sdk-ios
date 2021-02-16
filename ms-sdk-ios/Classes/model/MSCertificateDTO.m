#import "SWGDate.h"
#import "MSCertificateDTO.h"

@implementation MSCertificateDTO

@synthesize privateKey = _privateKey;
@synthesize chain = _chain;
@synthesize certificate = _certificate;
@synthesize provider = _provider;

-(id)privateKey: (MSPrivateKey*) privateKey
    chain: (NSArray*) chain
    certificate: (MSX509Certificate*) certificate
    provider: (NSString*) provider
    
{
    _privateKey = privateKey;
    _chain = chain;
    _certificate = certificate;
    _provider = provider;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id privateKey_dict = dict[@"privateKey"];
        
        if(privateKey_dict != nil)
            _privateKey = [[MSPrivateKey  alloc]initWithValues:privateKey_dict];
        
        
        
        
        id chain_dict = dict[@"chain"];
        
        if([chain_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)chain_dict count]];
            if([(NSArray*)chain_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)chain_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[chain_dict objectAtIndex:i]];
                    MSCertificate* d = [[MSCertificate alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _chain = [[NSArray alloc] initWithArray:objs];
            }
            else
                _chain = [[NSArray alloc] init];
        }
        else {
            _chain = [[NSArray alloc] init];
        }
        
        
        
        
        id certificate_dict = dict[@"certificate"];
        
        if(certificate_dict != nil)
            _certificate = [[MSX509Certificate  alloc]initWithValues:certificate_dict];
        
        
        _provider = dict[@"provider"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_privateKey != nil){
        if([_privateKey isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_privateKey count] ; i++ ) {
				MSPrivateKey *privateKey = [[MSPrivateKey alloc]init];
				privateKey = [(NSArray*)_privateKey objectAtIndex:i];
                [array addObject:[(SWGObject*)privateKey asDictionary]];
            }
            dict[@"privateKey"] = array;
        }
        else if(_privateKey && [_privateKey isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_privateKey toString];
            if(dateString){
                dict[@"privateKey"] = dateString;
            }
        }
        else {
        
            if(_privateKey != nil) dict[@"privateKey"] = [(SWGObject*)_privateKey asDictionary];
        
        }
    }
    
    
    
    if(_chain != nil){
        if([_chain isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_chain count] ; i++ ) {
				MSCertificate *chain = [[MSCertificate alloc]init];
				chain = [(NSArray*)_chain objectAtIndex:i];
                [array addObject:[(SWGObject*)chain asDictionary]];
            }
            dict[@"chain"] = array;
        }
        else if(_chain && [_chain isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_chain toString];
            if(dateString){
                dict[@"chain"] = dateString;
            }
        }
        else {
        
            if(_chain != nil) dict[@"chain"] = [(SWGObject*)_chain asDictionary];
        
        }
    }
    
    
    
    if(_certificate != nil){
        if([_certificate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_certificate count] ; i++ ) {
				MSX509Certificate *certificate = [[MSX509Certificate alloc]init];
				certificate = [(NSArray*)_certificate objectAtIndex:i];
                [array addObject:[(SWGObject*)certificate asDictionary]];
            }
            dict[@"certificate"] = array;
        }
        else if(_certificate && [_certificate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_certificate toString];
            if(dateString){
                dict[@"certificate"] = dateString;
            }
        }
        else {
        
            if(_certificate != nil) dict[@"certificate"] = [(SWGObject*)_certificate asDictionary];
        
        }
    }
    
    
    
            if(_provider != nil) dict[@"provider"] = _provider ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

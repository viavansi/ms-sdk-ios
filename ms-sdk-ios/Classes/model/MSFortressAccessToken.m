#import "SWGDate.h"
#import "MSFortressAccessToken.h"

@implementation MSFortressAccessToken

@synthesize access_token = _access_token;
@synthesize token_type = _token_type;
@synthesize expires_in = _expires_in;
@synthesize user_code = _user_code;
@synthesize certificate = _certificate;

-(id)access_token: (NSString*) access_token
    token_type: (NSString*) token_type
    expires_in: (NSNumber*) expires_in
    user_code: (NSString*) user_code
    certificate: (MSFortressCertificate*) certificate
    
{
    _access_token = access_token;
    _token_type = token_type;
    _expires_in = expires_in;
    _user_code = user_code;
    _certificate = certificate;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _access_token = dict[@"access_token"];
        
        _token_type = dict[@"token_type"];
        
        _expires_in = dict[@"expires_in"];
        
        _user_code = dict[@"user_code"];
        
        
        
        id certificate_dict = dict[@"certificate"];
        
        if(certificate_dict != nil)
            _certificate = [[MSFortressCertificate  alloc]initWithValues:certificate_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_access_token != nil) dict[@"access_token"] = _access_token ;
        
    
    
            if(_token_type != nil) dict[@"token_type"] = _token_type ;
        
    
    
            if(_expires_in != nil) dict[@"expires_in"] = _expires_in ;
        
    
    
            if(_user_code != nil) dict[@"user_code"] = _user_code ;
        
    
    
    if(_certificate != nil){
        if([_certificate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_certificate count] ; i++ ) {
				MSFortressCertificate *certificate = [[MSFortressCertificate alloc]init];
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
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

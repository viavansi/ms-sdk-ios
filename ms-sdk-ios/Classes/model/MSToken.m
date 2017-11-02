#import "SWGDate.h"
#import "MSToken.h"

@implementation MSToken

-(id)oauth_token: (NSString*) oauth_token
    oauth_token_secret: (NSString*) oauth_token_secret
    
{
    _oauth_token = oauth_token;
    _oauth_token_secret = oauth_token_secret;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _oauth_token = dict[@"oauth_token"];
        
        _oauth_token_secret = dict[@"oauth_token_secret"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_oauth_token != nil) dict[@"oauth_token"] = _oauth_token ;
        
    
    
            if(_oauth_token_secret != nil) dict[@"oauth_token_secret"] = _oauth_token_secret ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

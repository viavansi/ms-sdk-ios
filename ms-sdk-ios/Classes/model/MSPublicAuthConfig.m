#import "SWGDate.h"
#import "MSPublicAuthConfig.h"

@implementation MSPublicAuthConfig

@synthesize token = _token;
@synthesize apiSecurityType = _apiSecurityType;
@synthesize apiUrl = _apiUrl;
@synthesize oauthAuthPath = _oauthAuthPath;
@synthesize oauthTokenPath = _oauthTokenPath;
@synthesize oauthAuthority = _oauthAuthority;
@synthesize documentsHost = _documentsHost;
@synthesize loginBackground = _loginBackground;
@synthesize loginDisabled = _loginDisabled;
@synthesize logo = _logo;
@synthesize mainColor = _mainColor;
@synthesize mainNegativeColor = _mainNegativeColor;
@synthesize darkColor = _darkColor;
@synthesize apiEditable = _apiEditable;
@synthesize termsUrl = _termsUrl;
@synthesize backendVersion = _backendVersion;
@synthesize editableURL = _editableURL;
@synthesize forceUpdate = _forceUpdate;

-(id)token: (NSString*) token
    apiSecurityType: (NSString*) apiSecurityType
    apiUrl: (NSString*) apiUrl
    oauthAuthPath: (NSString*) oauthAuthPath
    oauthTokenPath: (NSString*) oauthTokenPath
    oauthAuthority: (NSString*) oauthAuthority
    documentsHost: (NSString*) documentsHost
    loginBackground: (NSString*) loginBackground
    loginDisabled: (NSNumber*) loginDisabled
    logo: (NSString*) logo
    mainColor: (NSString*) mainColor
    mainNegativeColor: (NSString*) mainNegativeColor
    darkColor: (NSString*) darkColor
    apiEditable: (NSNumber*) apiEditable
    termsUrl: (NSString*) termsUrl
    backendVersion: (NSString*) backendVersion
    editableURL: (NSNumber*) editableURL
    forceUpdate: (NSNumber*) forceUpdate
    
{
    _token = token;
    _apiSecurityType = apiSecurityType;
    _apiUrl = apiUrl;
    _oauthAuthPath = oauthAuthPath;
    _oauthTokenPath = oauthTokenPath;
    _oauthAuthority = oauthAuthority;
    _documentsHost = documentsHost;
    _loginBackground = loginBackground;
    _loginDisabled = loginDisabled;
    _logo = logo;
    _mainColor = mainColor;
    _mainNegativeColor = mainNegativeColor;
    _darkColor = darkColor;
    _apiEditable = apiEditable;
    _termsUrl = termsUrl;
    _backendVersion = backendVersion;
    _editableURL = editableURL;
    _forceUpdate = forceUpdate;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _token = dict[@"token"];
        
        _apiSecurityType = dict[@"apiSecurityType"];
        
        _apiUrl = dict[@"apiUrl"];
        
        _oauthAuthPath = dict[@"oauthAuthPath"];
        
        _oauthTokenPath = dict[@"oauthTokenPath"];
        
        _oauthAuthority = dict[@"oauthAuthority"];
        
        _documentsHost = dict[@"documentsHost"];
        
        _loginBackground = dict[@"loginBackground"];
        
        _loginDisabled = dict[@"loginDisabled"];
        
        _logo = dict[@"logo"];
        
        _mainColor = dict[@"mainColor"];
        
        _mainNegativeColor = dict[@"mainNegativeColor"];
        
        _darkColor = dict[@"darkColor"];
        
        _apiEditable = dict[@"apiEditable"];
        
        _termsUrl = dict[@"termsUrl"];
        
        _backendVersion = dict[@"backendVersion"];
        
        _editableURL = dict[@"editableURL"];
        
        _forceUpdate = dict[@"forceUpdate"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_token != nil) dict[@"token"] = _token ;
        
    
    
            if(_apiSecurityType != nil) dict[@"apiSecurityType"] = _apiSecurityType ;
        
    
    
            if(_apiUrl != nil) dict[@"apiUrl"] = _apiUrl ;
        
    
    
            if(_oauthAuthPath != nil) dict[@"oauthAuthPath"] = _oauthAuthPath ;
        
    
    
            if(_oauthTokenPath != nil) dict[@"oauthTokenPath"] = _oauthTokenPath ;
        
    
    
            if(_oauthAuthority != nil) dict[@"oauthAuthority"] = _oauthAuthority ;
        
    
    
            if(_documentsHost != nil) dict[@"documentsHost"] = _documentsHost ;
        
    
    
            if(_loginBackground != nil) dict[@"loginBackground"] = _loginBackground ;
        
    
    
            if(_loginDisabled != nil) dict[@"loginDisabled"] = _loginDisabled ;
        
    
    
            if(_logo != nil) dict[@"logo"] = _logo ;
        
    
    
            if(_mainColor != nil) dict[@"mainColor"] = _mainColor ;
        
    
    
            if(_mainNegativeColor != nil) dict[@"mainNegativeColor"] = _mainNegativeColor ;
        
    
    
            if(_darkColor != nil) dict[@"darkColor"] = _darkColor ;
        
    
    
            if(_apiEditable != nil) dict[@"apiEditable"] = _apiEditable ;
        
    
    
            if(_termsUrl != nil) dict[@"termsUrl"] = _termsUrl ;
        
    
    
            if(_backendVersion != nil) dict[@"backendVersion"] = _backendVersion ;
        
    
    
            if(_editableURL != nil) dict[@"editableURL"] = _editableURL ;
        
    
    
            if(_forceUpdate != nil) dict[@"forceUpdate"] = _forceUpdate ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSVersion.h"

@implementation MSVersion

@synthesize type = _type;
@synthesize version = _version;
@synthesize showUpdate = _showUpdate;
@synthesize forceUpdate = _forceUpdate;
@synthesize installURL = _installURL;
@synthesize installMessage = _installMessage;
@synthesize iconURL = _iconURL;
@synthesize teamId = _teamId;
@synthesize keyId = _keyId;
@synthesize authKey = _authKey;
@synthesize tokenGCM = _tokenGCM;

-(id)type: (NSString*) type
    version: (NSString*) version
    showUpdate: (NSNumber*) showUpdate
    forceUpdate: (NSNumber*) forceUpdate
    installURL: (NSString*) installURL
    installMessage: (NSString*) installMessage
    iconURL: (NSString*) iconURL
    teamId: (NSString*) teamId
    keyId: (NSString*) keyId
    authKey: (NSString*) authKey
    tokenGCM: (NSString*) tokenGCM
    
{
    _type = type;
    _version = version;
    _showUpdate = showUpdate;
    _forceUpdate = forceUpdate;
    _installURL = installURL;
    _installMessage = installMessage;
    _iconURL = iconURL;
    _teamId = teamId;
    _keyId = keyId;
    _authKey = authKey;
    _tokenGCM = tokenGCM;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _version = dict[@"version"];
        
        _showUpdate = dict[@"showUpdate"];
        
        _forceUpdate = dict[@"forceUpdate"];
        
        _installURL = dict[@"installURL"];
        
        _installMessage = dict[@"installMessage"];
        
        _iconURL = dict[@"iconURL"];
        
        _teamId = dict[@"teamId"];
        
        _keyId = dict[@"keyId"];
        
        _authKey = dict[@"authKey"];
        
        _tokenGCM = dict[@"tokenGCM"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    
    
            if(_showUpdate != nil) dict[@"showUpdate"] = _showUpdate ;
        
    
    
            if(_forceUpdate != nil) dict[@"forceUpdate"] = _forceUpdate ;
        
    
    
            if(_installURL != nil) dict[@"installURL"] = _installURL ;
        
    
    
            if(_installMessage != nil) dict[@"installMessage"] = _installMessage ;
        
    
    
            if(_iconURL != nil) dict[@"iconURL"] = _iconURL ;
        
    
    
            if(_teamId != nil) dict[@"teamId"] = _teamId ;
        
    
    
            if(_keyId != nil) dict[@"keyId"] = _keyId ;
        
    
    
            if(_authKey != nil) dict[@"authKey"] = _authKey ;
        
    
    
            if(_tokenGCM != nil) dict[@"tokenGCM"] = _tokenGCM ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

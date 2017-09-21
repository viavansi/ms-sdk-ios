#import "SWGDate.h"
#import "MSVersion.h"

@implementation MSVersion

@synthesize type = _type;
@synthesize version = _version;
@synthesize showUpdate = _showUpdate;
@synthesize installURL = _installURL;
@synthesize installMessage = _installMessage;

-(id)type: (NSString*) type
    version: (NSString*) version
    showUpdate: (NSNumber*) showUpdate
    installURL: (NSString*) installURL
    installMessage: (NSString*) installMessage
    
{
    _type = type;
    _version = version;
    _showUpdate = showUpdate;
    _installURL = installURL;
    _installMessage = installMessage;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _version = dict[@"version"];
        
        _showUpdate = dict[@"showUpdate"];
        
        _installURL = dict[@"installURL"];
        
        _installMessage = dict[@"installMessage"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    
    
            if(_showUpdate != nil) dict[@"showUpdate"] = _showUpdate ;
        
    
    
            if(_installURL != nil) dict[@"installURL"] = _installURL ;
        
    
    
            if(_installMessage != nil) dict[@"installMessage"] = _installMessage ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

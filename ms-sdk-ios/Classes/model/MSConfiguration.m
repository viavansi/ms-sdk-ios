#import "SWGDate.h"
#import "MSConfiguration.h"

@implementation MSConfiguration

-(id)viafirmaURL: (NSString*) viafirmaURL
    editableURL: (NSNumber*) editableURL
    frontCamera: (NSNumber*) frontCamera
    autoLogout: (NSNumber*) autoLogout
    showCSV: (NSNumber*) showCSV
    personMask: (NSNumber*) personMask
    registerHide: (NSNumber*) registerHide
    allowsInvalidSSLCertificate: (NSNumber*) allowsInvalidSSLCertificate
    evidenceBase64: (NSNumber*) evidenceBase64
    version: (NSString*) version
    showUpdate: (NSNumber*) showUpdate
    installURL: (NSString*) installURL
    installMessage: (NSString*) installMessage
    backendVersion: (NSString*) backendVersion
    finalize_menu_options: (NSArray*) finalize_menu_options
    autoRegisterDevice: (NSNumber*) autoRegisterDevice
    versions: (NSArray*) versions
    clientSignature: (NSNumber*) clientSignature
    finalizeActions: (NSArray*) finalizeActions
    sSLPinningEnabled: (NSNumber*) sSLPinningEnabled
    
{
    _viafirmaURL = viafirmaURL;
    _editableURL = editableURL;
    _frontCamera = frontCamera;
    _autoLogout = autoLogout;
    _showCSV = showCSV;
    _personMask = personMask;
    _registerHide = registerHide;
    _allowsInvalidSSLCertificate = allowsInvalidSSLCertificate;
    _evidenceBase64 = evidenceBase64;
    _version = version;
    _showUpdate = showUpdate;
    _installURL = installURL;
    _installMessage = installMessage;
    _backendVersion = backendVersion;
    _finalize_menu_options = finalize_menu_options;
    _autoRegisterDevice = autoRegisterDevice;
    _versions = versions;
    _clientSignature = clientSignature;
    _finalizeActions = finalizeActions;
    _sSLPinningEnabled = sSLPinningEnabled;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _viafirmaURL = dict[@"viafirmaURL"];
        
        _editableURL = dict[@"editableURL"];
        
        _frontCamera = dict[@"frontCamera"];
        
        _autoLogout = dict[@"autoLogout"];
        
        _showCSV = dict[@"showCSV"];
        
        _personMask = dict[@"personMask"];
        
        _registerHide = dict[@"registerHide"];
        
        _allowsInvalidSSLCertificate = dict[@"allowsInvalidSSLCertificate"];
        
        _evidenceBase64 = dict[@"evidenceBase64"];
        
        _version = dict[@"version"];
        
        _showUpdate = dict[@"showUpdate"];
        
        _installURL = dict[@"installURL"];
        
        _installMessage = dict[@"installMessage"];
        
        _backendVersion = dict[@"backendVersion"];
        
        
        
        id finalize_menu_options_dict = dict[@"finalize_menu_options"];
        
        if([finalize_menu_options_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)finalize_menu_options_dict count]];
            if([(NSArray*)finalize_menu_options_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)finalize_menu_options_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[finalize_menu_options_dict objectAtIndex:i]];
                    MSMenuOption* d = [[MSMenuOption alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _finalize_menu_options = [[NSArray alloc] initWithArray:objs];
            }
            else
                _finalize_menu_options = [[NSArray alloc] init];
        }
        else {
            _finalize_menu_options = [[NSArray alloc] init];
        }
        
        
        _autoRegisterDevice = dict[@"autoRegisterDevice"];
        
        
        
        id versions_dict = dict[@"versions"];
        
        if([versions_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)versions_dict count]];
            if([(NSArray*)versions_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)versions_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[versions_dict objectAtIndex:i]];
                    MSVersion* d = [[MSVersion alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _versions = [[NSArray alloc] initWithArray:objs];
            }
            else
                _versions = [[NSArray alloc] init];
        }
        else {
            _versions = [[NSArray alloc] init];
        }
        
        
        _clientSignature = dict[@"clientSignature"];
        
        
        
        id finalizeActions_dict = dict[@"finalizeActions"];
        
        if([finalizeActions_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)finalizeActions_dict count]];
            if([(NSArray*)finalizeActions_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)finalizeActions_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[finalizeActions_dict objectAtIndex:i]];
                    MSFinalizeAction* d = [[MSFinalizeAction alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _finalizeActions = [[NSArray alloc] initWithArray:objs];
            }
            else
                _finalizeActions = [[NSArray alloc] init];
        }
        else {
            _finalizeActions = [[NSArray alloc] init];
        }
        
        
        _sSLPinningEnabled = dict[@"sSLPinningEnabled"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_viafirmaURL != nil) dict[@"viafirmaURL"] = _viafirmaURL ;
        
    
    
            if(_editableURL != nil) dict[@"editableURL"] = _editableURL ;
        
    
    
            if(_frontCamera != nil) dict[@"frontCamera"] = _frontCamera ;
        
    
    
            if(_autoLogout != nil) dict[@"autoLogout"] = _autoLogout ;
        
    
    
            if(_showCSV != nil) dict[@"showCSV"] = _showCSV ;
        
    
    
            if(_personMask != nil) dict[@"personMask"] = _personMask ;
        
    
    
            if(_registerHide != nil) dict[@"registerHide"] = _registerHide ;
        
    
    
            if(_allowsInvalidSSLCertificate != nil) dict[@"allowsInvalidSSLCertificate"] = _allowsInvalidSSLCertificate ;
        
    
    
            if(_evidenceBase64 != nil) dict[@"evidenceBase64"] = _evidenceBase64 ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    
    
            if(_showUpdate != nil) dict[@"showUpdate"] = _showUpdate ;
        
    
    
            if(_installURL != nil) dict[@"installURL"] = _installURL ;
        
    
    
            if(_installMessage != nil) dict[@"installMessage"] = _installMessage ;
        
    
    
            if(_backendVersion != nil) dict[@"backendVersion"] = _backendVersion ;
        
    
    
    if(_finalize_menu_options != nil){
        if([_finalize_menu_options isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_finalize_menu_options count] ; i++ ) {
				MSMenuOption *finalize_menu_options = [[MSMenuOption alloc]init];
				finalize_menu_options = [(NSArray*)_finalize_menu_options objectAtIndex:i];            
                [array addObject:[(SWGObject*)finalize_menu_options asDictionary]];
            }
            dict[@"finalize_menu_options"] = array;
        }
        else if(_finalize_menu_options && [_finalize_menu_options isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_finalize_menu_options toString];
            if(dateString){
                dict[@"finalize_menu_options"] = dateString;
            }
        }
        else {
        
            if(_finalize_menu_options != nil) dict[@"finalize_menu_options"] = [(SWGObject*)_finalize_menu_options asDictionary];
        
        }
    }
    
    
    
            if(_autoRegisterDevice != nil) dict[@"autoRegisterDevice"] = _autoRegisterDevice ;
        
    
    
    if(_versions != nil){
        if([_versions isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_versions count] ; i++ ) {
				MSVersion *versions = [[MSVersion alloc]init];
				versions = [(NSArray*)_versions objectAtIndex:i];            
                [array addObject:[(SWGObject*)versions asDictionary]];
            }
            dict[@"versions"] = array;
        }
        else if(_versions && [_versions isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_versions toString];
            if(dateString){
                dict[@"versions"] = dateString;
            }
        }
        else {
        
            if(_versions != nil) dict[@"versions"] = [(SWGObject*)_versions asDictionary];
        
        }
    }
    
    
    
            if(_clientSignature != nil) dict[@"clientSignature"] = _clientSignature ;
        
    
    
    if(_finalizeActions != nil){
        if([_finalizeActions isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_finalizeActions count] ; i++ ) {
				MSFinalizeAction *finalizeActions = [[MSFinalizeAction alloc]init];
				finalizeActions = [(NSArray*)_finalizeActions objectAtIndex:i];            
                [array addObject:[(SWGObject*)finalizeActions asDictionary]];
            }
            dict[@"finalizeActions"] = array;
        }
        else if(_finalizeActions && [_finalizeActions isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_finalizeActions toString];
            if(dateString){
                dict[@"finalizeActions"] = dateString;
            }
        }
        else {
        
            if(_finalizeActions != nil) dict[@"finalizeActions"] = [(SWGObject*)_finalizeActions asDictionary];
        
        }
    }
    
    
    
            if(_sSLPinningEnabled != nil) dict[@"sSLPinningEnabled"] = _sSLPinningEnabled ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

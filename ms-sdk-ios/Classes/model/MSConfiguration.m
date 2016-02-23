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
    finalizeAction: (MSFinalizeAction*) finalizeAction
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
    _finalizeAction = finalizeAction;
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
        
        
        
        id finalizeAction_dict = dict[@"finalizeAction"];
        
        if(finalizeAction_dict != nil)
            _finalizeAction = [[MSFinalizeAction  alloc]initWithValues:finalizeAction_dict];
        
        
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
        
    
    
    if(_finalizeAction != nil){
        if([_finalizeAction isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_finalizeAction count] ; i++ ) {
				MSFinalizeAction *finalizeAction = [[MSFinalizeAction alloc]init];
				finalizeAction = [(NSArray*)_finalizeAction objectAtIndex:i];            
                [array addObject:[(SWGObject*)finalizeAction asDictionary]];
            }
            dict[@"finalizeAction"] = array;
        }
        else if(_finalizeAction && [_finalizeAction isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_finalizeAction toString];
            if(dateString){
                dict[@"finalizeAction"] = dateString;
            }
        }
        else {
        
            if(_finalizeAction != nil) dict[@"finalizeAction"] = [(SWGObject*)_finalizeAction asDictionary];
        
        }
    }
    
    
    
            if(_sSLPinningEnabled != nil) dict[@"sSLPinningEnabled"] = _sSLPinningEnabled ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

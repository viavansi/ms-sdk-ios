#import "SWGDate.h"
#import "Configuration.h"

@implementation Configuration

-(id)viafirmaURL: (NSString*) viafirmaURL
    editableURL: (NSNumber*) editableURL
    frontCamera: (NSNumber*) frontCamera
    autoLogout: (NSNumber*) autoLogout
    showCSV: (NSNumber*) showCSV
    personMask: (NSNumber*) personMask
    registerHide: (NSNumber*) registerHide
    allowsInvalidSSLCertificate: (NSNumber*) allowsInvalidSSLCertificate
    evidenceBase64: (NSNumber*) evidenceBase64
    finalize_menu_options: (NSArray*) finalize_menu_options
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
    _finalize_menu_options = finalize_menu_options;
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
        
        _finalize_menu_options = dict[@"finalize_menu_options"];
		
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
        
    
    
    if(_finalize_menu_options != nil){
        if([_finalize_menu_options isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( NSArray *finalize_menu_options in (NSArray*)_finalize_menu_options) {
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
    
    
    
            if(_sSLPinningEnabled != nil) dict[@"sSLPinningEnabled"] = _sSLPinningEnabled ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

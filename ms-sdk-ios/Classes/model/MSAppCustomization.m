#import "SWGDate.h"
#import "MSAppCustomization.h"

@implementation MSAppCustomization

@synthesize logo = _logo;
@synthesize mainColor = _mainColor;
@synthesize mainNegativeColor = _mainNegativeColor;
@synthesize errorMainColor = _errorMainColor;
@synthesize errorMainNegativeColor = _errorMainNegativeColor;
@synthesize successMainColor = _successMainColor;
@synthesize successMainNegativeColor = _successMainNegativeColor;
@synthesize darkColor = _darkColor;
@synthesize darkNegativeColor = _darkNegativeColor;
@synthesize serverEndpointSsoUrl = _serverEndpointSsoUrl;
@synthesize loginDisabled = _loginDisabled;
@synthesize showQr = _showQr;
@synthesize apiEditable = _apiEditable;
@synthesize showCertificate = _showCertificate;
@synthesize targetScanEnabled = _targetScanEnabled;
@synthesize expirationDays = _expirationDays;
@synthesize autoDownloadFinished = _autoDownloadFinished;
@synthesize autoDownloadInbox = _autoDownloadInbox;
@synthesize forceGeolocationOnEvidence = _forceGeolocationOnEvidence;
@synthesize fortressEnabled = _fortressEnabled;
@synthesize sessionTimeoutMinutes = _sessionTimeoutMinutes;
@synthesize userGroupsEnabled = _userGroupsEnabled;
@synthesize offlineIndicatorEnabled = _offlineIndicatorEnabled;
@synthesize allowNewRequests = _allowNewRequests;
@synthesize crmTransactEnabled = _crmTransactEnabled;
@synthesize hideUrl = _hideUrl;
@synthesize settingsCertificatesHide = _settingsCertificatesHide;
@synthesize settingsDocAssistantHide = _settingsDocAssistantHide;
@synthesize showActionsOnPdfOpen = _showActionsOnPdfOpen;
@synthesize forceStylus = _forceStylus;
@synthesize defaultStylus = _defaultStylus;
@synthesize strokeWidth = _strokeWidth;
@synthesize strokeWidthPhone = _strokeWidthPhone;
@synthesize imageEvidenceMenu = _imageEvidenceMenu;
@synthesize jpegQuality = _jpegQuality;
@synthesize pixelIncreaseFactor = _pixelIncreaseFactor;
@synthesize maxPixelsImage = _maxPixelsImage;
@synthesize pixelsImageDefault = _pixelsImageDefault;
@synthesize blockTakeScreenshots = _blockTakeScreenshots;
@synthesize debugMessagesZip = _debugMessagesZip;
@synthesize target = _target;
@synthesize loginBackground = _loginBackground;

-(id)logo: (NSString*) logo
    mainColor: (NSString*) mainColor
    mainNegativeColor: (NSString*) mainNegativeColor
    errorMainColor: (NSString*) errorMainColor
    errorMainNegativeColor: (NSString*) errorMainNegativeColor
    successMainColor: (NSString*) successMainColor
    successMainNegativeColor: (NSString*) successMainNegativeColor
    darkColor: (NSString*) darkColor
    darkNegativeColor: (NSString*) darkNegativeColor
    serverEndpointSsoUrl: (NSString*) serverEndpointSsoUrl
    loginDisabled: (NSNumber*) loginDisabled
    showQr: (NSNumber*) showQr
    apiEditable: (NSNumber*) apiEditable
    showCertificate: (NSNumber*) showCertificate
    targetScanEnabled: (NSNumber*) targetScanEnabled
    expirationDays: (NSNumber*) expirationDays
    autoDownloadFinished: (NSNumber*) autoDownloadFinished
    autoDownloadInbox: (NSNumber*) autoDownloadInbox
    forceGeolocationOnEvidence: (NSNumber*) forceGeolocationOnEvidence
    fortressEnabled: (NSNumber*) fortressEnabled
    sessionTimeoutMinutes: (NSNumber*) sessionTimeoutMinutes
    userGroupsEnabled: (NSNumber*) userGroupsEnabled
    offlineIndicatorEnabled: (NSNumber*) offlineIndicatorEnabled
    allowNewRequests: (NSNumber*) allowNewRequests
    crmTransactEnabled: (NSNumber*) crmTransactEnabled
    hideUrl: (NSNumber*) hideUrl
    settingsCertificatesHide: (NSNumber*) settingsCertificatesHide
    settingsDocAssistantHide: (NSNumber*) settingsDocAssistantHide
    showActionsOnPdfOpen: (NSNumber*) showActionsOnPdfOpen
    forceStylus: (NSNumber*) forceStylus
    defaultStylus: (NSString*) defaultStylus
    strokeWidth: (NSNumber*) strokeWidth
    strokeWidthPhone: (NSNumber*) strokeWidthPhone
    imageEvidenceMenu: (NSNumber*) imageEvidenceMenu
    jpegQuality: (NSNumber*) jpegQuality
    pixelIncreaseFactor: (NSNumber*) pixelIncreaseFactor
    maxPixelsImage: (NSNumber*) maxPixelsImage
    pixelsImageDefault: (NSNumber*) pixelsImageDefault
    blockTakeScreenshots: (NSNumber*) blockTakeScreenshots
    debugMessagesZip: (NSNumber*) debugMessagesZip
    target: (NSString*) target
    loginBackground: (NSString*) loginBackground
    
{
    _logo = logo;
    _mainColor = mainColor;
    _mainNegativeColor = mainNegativeColor;
    _errorMainColor = errorMainColor;
    _errorMainNegativeColor = errorMainNegativeColor;
    _successMainColor = successMainColor;
    _successMainNegativeColor = successMainNegativeColor;
    _darkColor = darkColor;
    _darkNegativeColor = darkNegativeColor;
    _serverEndpointSsoUrl = serverEndpointSsoUrl;
    _loginDisabled = loginDisabled;
    _showQr = showQr;
    _apiEditable = apiEditable;
    _showCertificate = showCertificate;
    _targetScanEnabled = targetScanEnabled;
    _expirationDays = expirationDays;
    _autoDownloadFinished = autoDownloadFinished;
    _autoDownloadInbox = autoDownloadInbox;
    _forceGeolocationOnEvidence = forceGeolocationOnEvidence;
    _fortressEnabled = fortressEnabled;
    _sessionTimeoutMinutes = sessionTimeoutMinutes;
    _userGroupsEnabled = userGroupsEnabled;
    _offlineIndicatorEnabled = offlineIndicatorEnabled;
    _allowNewRequests = allowNewRequests;
    _crmTransactEnabled = crmTransactEnabled;
    _hideUrl = hideUrl;
    _settingsCertificatesHide = settingsCertificatesHide;
    _settingsDocAssistantHide = settingsDocAssistantHide;
    _showActionsOnPdfOpen = showActionsOnPdfOpen;
    _forceStylus = forceStylus;
    _defaultStylus = defaultStylus;
    _strokeWidth = strokeWidth;
    _strokeWidthPhone = strokeWidthPhone;
    _imageEvidenceMenu = imageEvidenceMenu;
    _jpegQuality = jpegQuality;
    _pixelIncreaseFactor = pixelIncreaseFactor;
    _maxPixelsImage = maxPixelsImage;
    _pixelsImageDefault = pixelsImageDefault;
    _blockTakeScreenshots = blockTakeScreenshots;
    _debugMessagesZip = debugMessagesZip;
    _target = target;
    _loginBackground = loginBackground;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _logo = dict[@"logo"];
        
        _mainColor = dict[@"mainColor"];
        
        _mainNegativeColor = dict[@"mainNegativeColor"];
        
        _errorMainColor = dict[@"errorMainColor"];
        
        _errorMainNegativeColor = dict[@"errorMainNegativeColor"];
        
        _successMainColor = dict[@"successMainColor"];
        
        _successMainNegativeColor = dict[@"successMainNegativeColor"];
        
        _darkColor = dict[@"darkColor"];
        
        _darkNegativeColor = dict[@"darkNegativeColor"];
        
        _serverEndpointSsoUrl = dict[@"serverEndpointSsoUrl"];
        
        _loginDisabled = dict[@"loginDisabled"];
        
        _showQr = dict[@"showQr"];
        
        _apiEditable = dict[@"apiEditable"];
        
        _showCertificate = dict[@"showCertificate"];
        
        _targetScanEnabled = dict[@"targetScanEnabled"];
        
        _expirationDays = dict[@"expirationDays"];
        
        _autoDownloadFinished = dict[@"autoDownloadFinished"];
        
        _autoDownloadInbox = dict[@"autoDownloadInbox"];
        
        _forceGeolocationOnEvidence = dict[@"forceGeolocationOnEvidence"];
        
        _fortressEnabled = dict[@"fortressEnabled"];
        
        _sessionTimeoutMinutes = dict[@"sessionTimeoutMinutes"];
        
        _userGroupsEnabled = dict[@"userGroupsEnabled"];
        
        _offlineIndicatorEnabled = dict[@"offlineIndicatorEnabled"];
        
        _allowNewRequests = dict[@"allowNewRequests"];
        
        _crmTransactEnabled = dict[@"crmTransactEnabled"];
        
        _hideUrl = dict[@"hideUrl"];
        
        _settingsCertificatesHide = dict[@"settingsCertificatesHide"];
        
        _settingsDocAssistantHide = dict[@"settingsDocAssistantHide"];
        
        _showActionsOnPdfOpen = dict[@"showActionsOnPdfOpen"];
        
        _forceStylus = dict[@"forceStylus"];
        
        _defaultStylus = dict[@"defaultStylus"];
        
        _strokeWidth = dict[@"strokeWidth"];
        
        _strokeWidthPhone = dict[@"strokeWidthPhone"];
        
        _imageEvidenceMenu = dict[@"imageEvidenceMenu"];
        
        _jpegQuality = dict[@"jpegQuality"];
        
        _pixelIncreaseFactor = dict[@"pixelIncreaseFactor"];
        
        _maxPixelsImage = dict[@"maxPixelsImage"];
        
        _pixelsImageDefault = dict[@"pixelsImageDefault"];
        
        _blockTakeScreenshots = dict[@"blockTakeScreenshots"];
        
        _debugMessagesZip = dict[@"debugMessagesZip"];
        
        _target = dict[@"target"];
        
        _loginBackground = dict[@"loginBackground"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_logo != nil) dict[@"logo"] = _logo ;
        
    
    
            if(_mainColor != nil) dict[@"mainColor"] = _mainColor ;
        
    
    
            if(_mainNegativeColor != nil) dict[@"mainNegativeColor"] = _mainNegativeColor ;
        
    
    
            if(_errorMainColor != nil) dict[@"errorMainColor"] = _errorMainColor ;
        
    
    
            if(_errorMainNegativeColor != nil) dict[@"errorMainNegativeColor"] = _errorMainNegativeColor ;
        
    
    
            if(_successMainColor != nil) dict[@"successMainColor"] = _successMainColor ;
        
    
    
            if(_successMainNegativeColor != nil) dict[@"successMainNegativeColor"] = _successMainNegativeColor ;
        
    
    
            if(_darkColor != nil) dict[@"darkColor"] = _darkColor ;
        
    
    
            if(_darkNegativeColor != nil) dict[@"darkNegativeColor"] = _darkNegativeColor ;
        
    
    
            if(_serverEndpointSsoUrl != nil) dict[@"serverEndpointSsoUrl"] = _serverEndpointSsoUrl ;
        
    
    
            if(_loginDisabled != nil) dict[@"loginDisabled"] = _loginDisabled ;
        
    
    
            if(_showQr != nil) dict[@"showQr"] = _showQr ;
        
    
    
            if(_apiEditable != nil) dict[@"apiEditable"] = _apiEditable ;
        
    
    
            if(_showCertificate != nil) dict[@"showCertificate"] = _showCertificate ;
        
    
    
            if(_targetScanEnabled != nil) dict[@"targetScanEnabled"] = _targetScanEnabled ;
        
    
    
            if(_expirationDays != nil) dict[@"expirationDays"] = _expirationDays ;
        
    
    
            if(_autoDownloadFinished != nil) dict[@"autoDownloadFinished"] = _autoDownloadFinished ;
        
    
    
            if(_autoDownloadInbox != nil) dict[@"autoDownloadInbox"] = _autoDownloadInbox ;
        
    
    
            if(_forceGeolocationOnEvidence != nil) dict[@"forceGeolocationOnEvidence"] = _forceGeolocationOnEvidence ;
        
    
    
            if(_fortressEnabled != nil) dict[@"fortressEnabled"] = _fortressEnabled ;
        
    
    
            if(_sessionTimeoutMinutes != nil) dict[@"sessionTimeoutMinutes"] = _sessionTimeoutMinutes ;
        
    
    
            if(_userGroupsEnabled != nil) dict[@"userGroupsEnabled"] = _userGroupsEnabled ;
        
    
    
            if(_offlineIndicatorEnabled != nil) dict[@"offlineIndicatorEnabled"] = _offlineIndicatorEnabled ;
        
    
    
            if(_allowNewRequests != nil) dict[@"allowNewRequests"] = _allowNewRequests ;
        
    
    
            if(_crmTransactEnabled != nil) dict[@"crmTransactEnabled"] = _crmTransactEnabled ;
        
    
    
            if(_hideUrl != nil) dict[@"hideUrl"] = _hideUrl ;
        
    
    
            if(_settingsCertificatesHide != nil) dict[@"settingsCertificatesHide"] = _settingsCertificatesHide ;
        
    
    
            if(_settingsDocAssistantHide != nil) dict[@"settingsDocAssistantHide"] = _settingsDocAssistantHide ;
        
    
    
            if(_showActionsOnPdfOpen != nil) dict[@"showActionsOnPdfOpen"] = _showActionsOnPdfOpen ;
        
    
    
            if(_forceStylus != nil) dict[@"forceStylus"] = _forceStylus ;
        
    
    
            if(_defaultStylus != nil) dict[@"defaultStylus"] = _defaultStylus ;
        
    
    
            if(_strokeWidth != nil) dict[@"strokeWidth"] = _strokeWidth ;
        
    
    
            if(_strokeWidthPhone != nil) dict[@"strokeWidthPhone"] = _strokeWidthPhone ;
        
    
    
            if(_imageEvidenceMenu != nil) dict[@"imageEvidenceMenu"] = _imageEvidenceMenu ;
        
    
    
            if(_jpegQuality != nil) dict[@"jpegQuality"] = _jpegQuality ;
        
    
    
            if(_pixelIncreaseFactor != nil) dict[@"pixelIncreaseFactor"] = _pixelIncreaseFactor ;
        
    
    
            if(_maxPixelsImage != nil) dict[@"maxPixelsImage"] = _maxPixelsImage ;
        
    
    
            if(_pixelsImageDefault != nil) dict[@"pixelsImageDefault"] = _pixelsImageDefault ;
        
    
    
            if(_blockTakeScreenshots != nil) dict[@"blockTakeScreenshots"] = _blockTakeScreenshots ;
        
    
    
            if(_debugMessagesZip != nil) dict[@"debugMessagesZip"] = _debugMessagesZip ;
        
    
    
            if(_target != nil) dict[@"target"] = _target ;
        
    
    
            if(_loginBackground != nil) dict[@"loginBackground"] = _loginBackground ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

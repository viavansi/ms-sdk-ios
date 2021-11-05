#import "SWGDate.h"
#import "MSSignPageStyle.h"

@implementation MSSignPageStyle

@synthesize logo = _logo;
@synthesize mainColor = _mainColor;
@synthesize mainNegativeColor = _mainNegativeColor;
@synthesize headerBackgroundColor = _headerBackgroundColor;
@synthesize headerTextColor = _headerTextColor;
@synthesize infoClearColor = _infoClearColor;
@synthesize infoMainColor = _infoMainColor;
@synthesize infoMainNegativeColor = _infoMainNegativeColor;
@synthesize warningClearColor = _warningClearColor;
@synthesize warningMainColor = _warningMainColor;
@synthesize warningMainNegativeColor = _warningMainNegativeColor;
@synthesize errorClearColor = _errorClearColor;
@synthesize errorMainColor = _errorMainColor;
@synthesize errorMainNegativeColor = _errorMainNegativeColor;
@synthesize successClearColor = _successClearColor;
@synthesize successMainColor = _successMainColor;
@synthesize successMainNegativeColor = _successMainNegativeColor;
@synthesize linkColor = _linkColor;
@synthesize avoidGeolocation = _avoidGeolocation;
@synthesize hideDocumentBeforeStart = _hideDocumentBeforeStart;
@synthesize hideRejectAction = _hideRejectAction;
@synthesize hideOpenInApp = _hideOpenInApp;
@synthesize hideIntro = _hideIntro;
@synthesize hideAuditTrailLink = _hideAuditTrailLink;
@synthesize showUploadSignature = _showUploadSignature;
@synthesize languageId = _languageId;
@synthesize hideSidebar = _hideSidebar;
@synthesize hideHeader = _hideHeader;
@synthesize favicon = _favicon;
@synthesize tabTitle = _tabTitle;
@synthesize panelAttachmentsFirst = _panelAttachmentsFirst;
@synthesize hideImageUpload = _hideImageUpload;
@synthesize hideImageCapture = _hideImageCapture;
@synthesize hidePoweredByViafirma = _hidePoweredByViafirma;

-(id)logo: (NSString*) logo
    mainColor: (NSString*) mainColor
    mainNegativeColor: (NSString*) mainNegativeColor
    headerBackgroundColor: (NSString*) headerBackgroundColor
    headerTextColor: (NSString*) headerTextColor
    infoClearColor: (NSString*) infoClearColor
    infoMainColor: (NSString*) infoMainColor
    infoMainNegativeColor: (NSString*) infoMainNegativeColor
    warningClearColor: (NSString*) warningClearColor
    warningMainColor: (NSString*) warningMainColor
    warningMainNegativeColor: (NSString*) warningMainNegativeColor
    errorClearColor: (NSString*) errorClearColor
    errorMainColor: (NSString*) errorMainColor
    errorMainNegativeColor: (NSString*) errorMainNegativeColor
    successClearColor: (NSString*) successClearColor
    successMainColor: (NSString*) successMainColor
    successMainNegativeColor: (NSString*) successMainNegativeColor
    linkColor: (NSString*) linkColor
    avoidGeolocation: (NSNumber*) avoidGeolocation
    hideDocumentBeforeStart: (NSNumber*) hideDocumentBeforeStart
    hideRejectAction: (NSNumber*) hideRejectAction
    hideOpenInApp: (NSNumber*) hideOpenInApp
    hideIntro: (NSNumber*) hideIntro
    hideAuditTrailLink: (NSNumber*) hideAuditTrailLink
    showUploadSignature: (NSNumber*) showUploadSignature
    languageId: (NSString*) languageId
    hideSidebar: (NSNumber*) hideSidebar
    hideHeader: (NSNumber*) hideHeader
    favicon: (NSString*) favicon
    tabTitle: (NSString*) tabTitle
    panelAttachmentsFirst: (NSNumber*) panelAttachmentsFirst
    hideImageUpload: (NSNumber*) hideImageUpload
    hideImageCapture: (NSNumber*) hideImageCapture
    hidePoweredByViafirma: (NSNumber*) hidePoweredByViafirma
    
{
    _logo = logo;
    _mainColor = mainColor;
    _mainNegativeColor = mainNegativeColor;
    _headerBackgroundColor = headerBackgroundColor;
    _headerTextColor = headerTextColor;
    _infoClearColor = infoClearColor;
    _infoMainColor = infoMainColor;
    _infoMainNegativeColor = infoMainNegativeColor;
    _warningClearColor = warningClearColor;
    _warningMainColor = warningMainColor;
    _warningMainNegativeColor = warningMainNegativeColor;
    _errorClearColor = errorClearColor;
    _errorMainColor = errorMainColor;
    _errorMainNegativeColor = errorMainNegativeColor;
    _successClearColor = successClearColor;
    _successMainColor = successMainColor;
    _successMainNegativeColor = successMainNegativeColor;
    _linkColor = linkColor;
    _avoidGeolocation = avoidGeolocation;
    _hideDocumentBeforeStart = hideDocumentBeforeStart;
    _hideRejectAction = hideRejectAction;
    _hideOpenInApp = hideOpenInApp;
    _hideIntro = hideIntro;
    _hideAuditTrailLink = hideAuditTrailLink;
    _showUploadSignature = showUploadSignature;
    _languageId = languageId;
    _hideSidebar = hideSidebar;
    _hideHeader = hideHeader;
    _favicon = favicon;
    _tabTitle = tabTitle;
    _panelAttachmentsFirst = panelAttachmentsFirst;
    _hideImageUpload = hideImageUpload;
    _hideImageCapture = hideImageCapture;
    _hidePoweredByViafirma = hidePoweredByViafirma;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _logo = dict[@"logo"];
        
        _mainColor = dict[@"mainColor"];
        
        _mainNegativeColor = dict[@"mainNegativeColor"];
        
        _headerBackgroundColor = dict[@"headerBackgroundColor"];
        
        _headerTextColor = dict[@"headerTextColor"];
        
        _infoClearColor = dict[@"infoClearColor"];
        
        _infoMainColor = dict[@"infoMainColor"];
        
        _infoMainNegativeColor = dict[@"infoMainNegativeColor"];
        
        _warningClearColor = dict[@"warningClearColor"];
        
        _warningMainColor = dict[@"warningMainColor"];
        
        _warningMainNegativeColor = dict[@"warningMainNegativeColor"];
        
        _errorClearColor = dict[@"errorClearColor"];
        
        _errorMainColor = dict[@"errorMainColor"];
        
        _errorMainNegativeColor = dict[@"errorMainNegativeColor"];
        
        _successClearColor = dict[@"successClearColor"];
        
        _successMainColor = dict[@"successMainColor"];
        
        _successMainNegativeColor = dict[@"successMainNegativeColor"];
        
        _linkColor = dict[@"linkColor"];
        
        _avoidGeolocation = dict[@"avoidGeolocation"];
        
        _hideDocumentBeforeStart = dict[@"hideDocumentBeforeStart"];
        
        _hideRejectAction = dict[@"hideRejectAction"];
        
        _hideOpenInApp = dict[@"hideOpenInApp"];
        
        _hideIntro = dict[@"hideIntro"];
        
        _hideAuditTrailLink = dict[@"hideAuditTrailLink"];
        
        _showUploadSignature = dict[@"showUploadSignature"];
        
        _languageId = dict[@"languageId"];
        
        _hideSidebar = dict[@"hideSidebar"];
        
        _hideHeader = dict[@"hideHeader"];
        
        _favicon = dict[@"favicon"];
        
        _tabTitle = dict[@"tabTitle"];
        
        _panelAttachmentsFirst = dict[@"panelAttachmentsFirst"];
        
        _hideImageUpload = dict[@"hideImageUpload"];
        
        _hideImageCapture = dict[@"hideImageCapture"];
        
        _hidePoweredByViafirma = dict[@"hidePoweredByViafirma"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_logo != nil) dict[@"logo"] = _logo ;
        
    
    
            if(_mainColor != nil) dict[@"mainColor"] = _mainColor ;
        
    
    
            if(_mainNegativeColor != nil) dict[@"mainNegativeColor"] = _mainNegativeColor ;
        
    
    
            if(_headerBackgroundColor != nil) dict[@"headerBackgroundColor"] = _headerBackgroundColor ;
        
    
    
            if(_headerTextColor != nil) dict[@"headerTextColor"] = _headerTextColor ;
        
    
    
            if(_infoClearColor != nil) dict[@"infoClearColor"] = _infoClearColor ;
        
    
    
            if(_infoMainColor != nil) dict[@"infoMainColor"] = _infoMainColor ;
        
    
    
            if(_infoMainNegativeColor != nil) dict[@"infoMainNegativeColor"] = _infoMainNegativeColor ;
        
    
    
            if(_warningClearColor != nil) dict[@"warningClearColor"] = _warningClearColor ;
        
    
    
            if(_warningMainColor != nil) dict[@"warningMainColor"] = _warningMainColor ;
        
    
    
            if(_warningMainNegativeColor != nil) dict[@"warningMainNegativeColor"] = _warningMainNegativeColor ;
        
    
    
            if(_errorClearColor != nil) dict[@"errorClearColor"] = _errorClearColor ;
        
    
    
            if(_errorMainColor != nil) dict[@"errorMainColor"] = _errorMainColor ;
        
    
    
            if(_errorMainNegativeColor != nil) dict[@"errorMainNegativeColor"] = _errorMainNegativeColor ;
        
    
    
            if(_successClearColor != nil) dict[@"successClearColor"] = _successClearColor ;
        
    
    
            if(_successMainColor != nil) dict[@"successMainColor"] = _successMainColor ;
        
    
    
            if(_successMainNegativeColor != nil) dict[@"successMainNegativeColor"] = _successMainNegativeColor ;
        
    
    
            if(_linkColor != nil) dict[@"linkColor"] = _linkColor ;
        
    
    
            if(_avoidGeolocation != nil) dict[@"avoidGeolocation"] = _avoidGeolocation ;
        
    
    
            if(_hideDocumentBeforeStart != nil) dict[@"hideDocumentBeforeStart"] = _hideDocumentBeforeStart ;
        
    
    
            if(_hideRejectAction != nil) dict[@"hideRejectAction"] = _hideRejectAction ;
        
    
    
            if(_hideOpenInApp != nil) dict[@"hideOpenInApp"] = _hideOpenInApp ;
        
    
    
            if(_hideIntro != nil) dict[@"hideIntro"] = _hideIntro ;
        
    
    
            if(_hideAuditTrailLink != nil) dict[@"hideAuditTrailLink"] = _hideAuditTrailLink ;
        
    
    
            if(_showUploadSignature != nil) dict[@"showUploadSignature"] = _showUploadSignature ;
        
    
    
            if(_languageId != nil) dict[@"languageId"] = _languageId ;
        
    
    
            if(_hideSidebar != nil) dict[@"hideSidebar"] = _hideSidebar ;
        
    
    
            if(_hideHeader != nil) dict[@"hideHeader"] = _hideHeader ;
        
    
    
            if(_favicon != nil) dict[@"favicon"] = _favicon ;
        
    
    
            if(_tabTitle != nil) dict[@"tabTitle"] = _tabTitle ;
        
    
    
            if(_panelAttachmentsFirst != nil) dict[@"panelAttachmentsFirst"] = _panelAttachmentsFirst ;
        
    
    
            if(_hideImageUpload != nil) dict[@"hideImageUpload"] = _hideImageUpload ;
        
    
    
            if(_hideImageCapture != nil) dict[@"hideImageCapture"] = _hideImageCapture ;
        
    
    
            if(_hidePoweredByViafirma != nil) dict[@"hidePoweredByViafirma"] = _hidePoweredByViafirma ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAppCustomization : SWGObject

@property(nonatomic) NSString* logo;  
@property(nonatomic) NSString* mainColor;  
@property(nonatomic) NSString* mainNegativeColor;  
@property(nonatomic) NSString* errorMainColor;  
@property(nonatomic) NSString* errorMainNegativeColor;  
@property(nonatomic) NSString* successMainColor;  
@property(nonatomic) NSString* successMainNegativeColor;  
@property(nonatomic) NSString* darkColor;  
@property(nonatomic) NSString* darkNegativeColor;  
@property(nonatomic) NSString* serverEndpointSsoUrl;  
@property(nonatomic) NSNumber* loginDisabled;  
@property(nonatomic) NSNumber* showQr;  
@property(nonatomic) NSNumber* apiEditable;  
@property(nonatomic) NSNumber* showCertificate;  
@property(nonatomic) NSNumber* targetScanEnabled;  
@property(nonatomic) NSNumber* expirationDays;  
@property(nonatomic) NSNumber* autoDownloadFinished;  
@property(nonatomic) NSNumber* autoDownloadInbox;  
@property(nonatomic) NSNumber* forceGeolocationOnEvidence;  
@property(nonatomic) NSNumber* fortressEnabled;  
@property(nonatomic) NSNumber* sessionTimeoutMinutes;  
@property(nonatomic) NSNumber* userGroupsEnabled;  
@property(nonatomic) NSNumber* offlineIndicatorEnabled;  
@property(nonatomic) NSNumber* allowNewRequests;  
@property(nonatomic) NSNumber* crmTransactEnabled;  
@property(nonatomic) NSNumber* hideUrl;  
@property(nonatomic) NSNumber* settingsCertificatesHide;  
@property(nonatomic) NSNumber* settingsDocAssistantHide;  
@property(nonatomic) NSNumber* showActionsOnPdfOpen;  
@property(nonatomic) NSNumber* forceStylus;  
@property(nonatomic) NSString* defaultStylus;  
@property(nonatomic) NSNumber* strokeWidth;  
@property(nonatomic) NSNumber* strokeWidthPhone;  
@property(nonatomic) NSNumber* imageEvidenceMenu;  
@property(nonatomic) NSNumber* jpegQuality;  
@property(nonatomic) NSNumber* pixelIncreaseFactor;  
@property(nonatomic) NSNumber* maxPixelsImage;  
@property(nonatomic) NSNumber* pixelsImageDefault;  
@property(nonatomic) NSNumber* blockTakeScreenshots;  
@property(nonatomic) NSNumber* debugMessagesZip;  
@property(nonatomic) NSString* target;  
@property(nonatomic) NSString* loginBackground;  
@property(nonatomic) NSNumber* _newAttachments;  
- (id) logo: (NSString*) logo     
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
    _newAttachments: (NSNumber*) _newAttachments;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSSignPageStyle : SWGObject

@property(nonatomic) NSString* logo;  
@property(nonatomic) NSString* mainColor;  
@property(nonatomic) NSString* mainNegativeColor;  
@property(nonatomic) NSString* headerBackgroundColor;  
@property(nonatomic) NSString* headerTextColor;  
@property(nonatomic) NSString* infoClearColor;  
@property(nonatomic) NSString* infoMainColor;  
@property(nonatomic) NSString* infoMainNegativeColor;  
@property(nonatomic) NSString* warningClearColor;  
@property(nonatomic) NSString* warningMainColor;  
@property(nonatomic) NSString* warningMainNegativeColor;  
@property(nonatomic) NSString* errorClearColor;  
@property(nonatomic) NSString* errorMainColor;  
@property(nonatomic) NSString* errorMainNegativeColor;  
@property(nonatomic) NSString* successClearColor;  
@property(nonatomic) NSString* successMainColor;  
@property(nonatomic) NSString* successMainNegativeColor;  
@property(nonatomic) NSString* linkColor;  
@property(nonatomic) NSNumber* avoidGeolocation;  
@property(nonatomic) NSNumber* hideDocumentBeforeStart;  
@property(nonatomic) NSNumber* hideRejectAction;  
@property(nonatomic) NSNumber* hideOpenInApp;  
@property(nonatomic) NSNumber* hideIntro;  
@property(nonatomic) NSNumber* hideAuditTrailLink;  
@property(nonatomic) NSNumber* showUploadSignature;  
@property(nonatomic) NSString* languageId;  
@property(nonatomic) NSNumber* hideSidebar;  
@property(nonatomic) NSNumber* hideHeader;  
@property(nonatomic) NSString* favicon;  
@property(nonatomic) NSString* tabTitle;  
@property(nonatomic) NSNumber* panelAttachmentsFirst;  
@property(nonatomic) NSNumber* hideImageUpload;  
@property(nonatomic) NSNumber* hideImageCapture;  
@property(nonatomic) NSNumber* hidePoweredByViafirma;  
@property(nonatomic) NSString* allowedSignType;  
- (id) logo: (NSString*) logo     
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
    allowedSignType: (NSString*) allowedSignType;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSItem.h"
#import "SWGDate.h"
#import "MSFont.h"


@interface MSDocument : SWGObject

@property(nonatomic) NSString* templateCode;  
@property(nonatomic) NSString* templateReference;  
@property(nonatomic) NSNumber* templateVersion;  
@property(nonatomic) NSString* draftedCode;  
@property(nonatomic) NSString* draftedReference;  
@property(nonatomic) NSString* signedCode;  
@property(nonatomic) NSString* signedID;  
@property(nonatomic) NSString* signedReference;  
@property(nonatomic) SWGDate* signingDate;  
@property(nonatomic) NSString* templateType;  
@property(nonatomic) NSNumber* formRequired;  
@property(nonatomic) NSNumber* formDisabled;  
@property(nonatomic) NSString* formRecipientKey;  
@property(nonatomic) NSArray* items;  
@property(nonatomic) NSNumber* pdfaCompliant;  /* generate pdf compliant with PDF/A-3A ISO 19005-3  */
@property(nonatomic) MSFont* font;  
@property(nonatomic) NSString* policyCode;  /* (since 3.5.0) code of policy to use  */
@property(nonatomic) NSString* password;  /* (since 3.5.0) document password  */
@property(nonatomic) NSNumber* readRequired;  
@property(nonatomic) NSNumber* numPages;  
@property(nonatomic) NSNumber* allowResend;  
@property(nonatomic) NSNumber* autoFinalize;  
@property(nonatomic) NSNumber* deleteSignedDocuments;  
@property(nonatomic) NSString* watermarkText;  
@property(nonatomic) NSNumber* extraPages;  
@property(nonatomic) NSNumber* formUpdated;  
@property(nonatomic) NSNumber* hideDocumentBeforeStart;  
- (id) templateCode: (NSString*) templateCode     
    templateReference: (NSString*) templateReference     
    templateVersion: (NSNumber*) templateVersion     
    draftedCode: (NSString*) draftedCode     
    draftedReference: (NSString*) draftedReference     
    signedCode: (NSString*) signedCode     
    signedID: (NSString*) signedID     
    signedReference: (NSString*) signedReference     
    signingDate: (SWGDate*) signingDate     
    templateType: (NSString*) templateType     
    formRequired: (NSNumber*) formRequired     
    formDisabled: (NSNumber*) formDisabled     
    formRecipientKey: (NSString*) formRecipientKey     
    items: (NSArray*) items     
    pdfaCompliant: (NSNumber*) pdfaCompliant     
    font: (MSFont*) font     
    policyCode: (NSString*) policyCode     
    password: (NSString*) password     
    readRequired: (NSNumber*) readRequired     
    numPages: (NSNumber*) numPages     
    allowResend: (NSNumber*) allowResend     
    autoFinalize: (NSNumber*) autoFinalize     
    deleteSignedDocuments: (NSNumber*) deleteSignedDocuments     
    watermarkText: (NSString*) watermarkText     
    extraPages: (NSNumber*) extraPages     
    formUpdated: (NSNumber*) formUpdated     
    hideDocumentBeforeStart: (NSNumber*) hideDocumentBeforeStart;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

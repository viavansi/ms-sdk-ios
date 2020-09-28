#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAuditTrailImage.h"


@interface MSAuditTrailFooter : SWGObject

@property(nonatomic) NSString* initialText;  
@property(nonatomic) MSAuditTrailImage* footerLogo;  
@property(nonatomic) NSString* highlightedText;  
@property(nonatomic) NSNumber* includePermalink;  
@property(nonatomic) NSString* auditTrailPDFDocumentPermalinkURL;  
@property(nonatomic) NSNumber* includeQR;  
@property(nonatomic) NSString* issuerInfo;  
@property(nonatomic) NSString* issuerExtraInfo;  
- (id) initialText: (NSString*) initialText     
    footerLogo: (MSAuditTrailImage*) footerLogo     
    highlightedText: (NSString*) highlightedText     
    includePermalink: (NSNumber*) includePermalink     
    auditTrailPDFDocumentPermalinkURL: (NSString*) auditTrailPDFDocumentPermalinkURL     
    includeQR: (NSNumber*) includeQR     
    issuerInfo: (NSString*) issuerInfo     
    issuerExtraInfo: (NSString*) issuerExtraInfo;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

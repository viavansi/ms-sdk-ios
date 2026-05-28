#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAuditTrailLabelValueInfo.h"


@interface MSAuditTrailTableRow : SWGObject

@property(nonatomic) NSString* column1Value;  
@property(nonatomic) NSString* column2Value;  
@property(nonatomic) NSString* column3Value;  
@property(nonatomic) NSNumber* includePDFLink;  
@property(nonatomic) NSString* pdfLinkURL;  
@property(nonatomic) NSNumber* includeModalPopup;  
@property(nonatomic) NSArray* labelValueInfoList;  
- (id) column1Value: (NSString*) column1Value     
    column2Value: (NSString*) column2Value     
    column3Value: (NSString*) column3Value     
    includePDFLink: (NSNumber*) includePDFLink     
    pdfLinkURL: (NSString*) pdfLinkURL     
    includeModalPopup: (NSNumber*) includeModalPopup     
    labelValueInfoList: (NSArray*) labelValueInfoList;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

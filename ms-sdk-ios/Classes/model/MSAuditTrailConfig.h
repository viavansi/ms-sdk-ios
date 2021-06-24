#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAuditTrailConfig : SWGObject

@property(nonatomic) NSString* locale;  
@property(nonatomic) NSString* timeZone;  
@property(nonatomic) NSNumber* addPdfLinks;  
@property(nonatomic) NSNumber* signPDF;  
@property(nonatomic) NSString* customizationUrl;  
- (id) locale: (NSString*) locale     
    timeZone: (NSString*) timeZone     
    addPdfLinks: (NSNumber*) addPdfLinks     
    signPDF: (NSNumber*) signPDF     
    customizationUrl: (NSString*) customizationUrl;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

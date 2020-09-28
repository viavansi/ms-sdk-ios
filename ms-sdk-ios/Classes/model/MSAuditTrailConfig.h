#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAuditTrailConfig : SWGObject

@property(nonatomic) NSString* locale;  
@property(nonatomic) NSString* timeZone;  
@property(nonatomic) NSNumber* addPdfLinks;  
@property(nonatomic) NSNumber* signPDF;  
- (id) locale: (NSString*) locale     
    timeZone: (NSString*) timeZone     
    addPdfLinks: (NSNumber*) addPdfLinks     
    signPDF: (NSNumber*) signPDF;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

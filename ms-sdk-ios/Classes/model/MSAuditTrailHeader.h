#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAuditTrailImage.h"


@interface MSAuditTrailHeader : SWGObject

@property(nonatomic) MSAuditTrailImage* mainLogo;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* text;  
- (id) mainLogo: (MSAuditTrailImage*) mainLogo     
    title: (NSString*) title     
    text: (NSString*) text;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

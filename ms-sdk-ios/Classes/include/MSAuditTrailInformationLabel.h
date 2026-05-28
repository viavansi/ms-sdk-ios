#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAuditTrailInformationLabel : SWGObject

@property(nonatomic) NSString* textContent;  
@property(nonatomic) NSString* typeOfLabel;  
- (id) textContent: (NSString*) textContent     
    typeOfLabel: (NSString*) typeOfLabel;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

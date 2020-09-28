#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAuditTrailLabelValueInfo.h"
#import "MSAuditTrailTemporalInfo.h"


@interface MSAuditTrailSummaryBlock : SWGObject

@property(nonatomic) NSString* title;  
@property(nonatomic) NSArray* labelValueFields;  
@property(nonatomic) NSArray* temporalInfoFields;  
- (id) title: (NSString*) title     
    labelValueFields: (NSArray*) labelValueFields     
    temporalInfoFields: (NSArray*) temporalInfoFields;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAuditTrailImage.h"
#import "MSAuditTrailLabelValueInfo.h"


@interface MSAuditTrailHighlightedItem : SWGObject

@property(nonatomic) NSString* title;  
@property(nonatomic) MSAuditTrailImage* logo;  
@property(nonatomic) NSArray* labelValueInfoList;  
- (id) title: (NSString*) title     
    logo: (MSAuditTrailImage*) logo     
    labelValueInfoList: (NSArray*) labelValueInfoList;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

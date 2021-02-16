#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAuditTrailImage.h"
#import "MSAuditTrailLabelValueInfo.h"
#import "MSAuditTrailInformationLabel.h"


@interface MSAuditTrailHighlightedItem : SWGObject

@property(nonatomic) NSString* title;  
@property(nonatomic) MSAuditTrailImage* logo;  
@property(nonatomic) NSArray* labelValueInfoList;  
@property(nonatomic) NSArray* informationLabelList;  
- (id) title: (NSString*) title     
    logo: (MSAuditTrailImage*) logo     
    labelValueInfoList: (NSArray*) labelValueInfoList     
    informationLabelList: (NSArray*) informationLabelList;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

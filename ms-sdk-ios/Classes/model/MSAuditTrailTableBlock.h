#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAuditTrailTableRow.h"


@interface MSAuditTrailTableBlock : SWGObject

@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* column1Title;  
@property(nonatomic) NSString* column2Title;  
@property(nonatomic) NSString* column3Title;  
@property(nonatomic) NSArray* rows;  
- (id) title: (NSString*) title     
    column1Title: (NSString*) column1Title     
    column2Title: (NSString*) column2Title     
    column3Title: (NSString*) column3Title     
    rows: (NSArray*) rows;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

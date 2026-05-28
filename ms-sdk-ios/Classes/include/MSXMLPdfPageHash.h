#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSXMLPdfPageHash : SWGObject

@property(nonatomic) NSNumber* pageNum;  
@property(nonatomic) NSString* value;  
- (id) pageNum: (NSNumber*) pageNum     
    value: (NSString*) value;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

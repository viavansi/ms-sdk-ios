#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSOcrFieldExtractionResult.h"


@interface MSOcrPageResult : SWGObject

@property(nonatomic) NSArray* fieldExtractionResults;  
@property(nonatomic) NSString* pageKey;  
- (id) fieldExtractionResults: (NSArray*) fieldExtractionResults     
    pageKey: (NSString*) pageKey;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

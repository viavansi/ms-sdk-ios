#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface MSDocumentCache : SWGObject

@property(nonatomic) NSString* templateReference;  
@property(nonatomic) NSString* md5;  
@property(nonatomic) SWGDate* expires;  
- (id) templateReference: (NSString*) templateReference     
    md5: (NSString*) md5     
    expires: (SWGDate*) expires;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSGenericEvidencePropertyDTO : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSString* value;  
- (id) key: (NSString*) key     
    value: (NSString*) value;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

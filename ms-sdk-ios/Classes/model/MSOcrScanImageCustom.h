#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSOcrScanImageCustom : SWGObject

@property(nonatomic) NSString* key;  
@property(nonatomic) NSString* base64Image;  
- (id) key: (NSString*) key     
    base64Image: (NSString*) base64Image;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

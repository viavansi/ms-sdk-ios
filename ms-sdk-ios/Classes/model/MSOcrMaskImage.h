#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSOcrMaskImage : SWGObject

@property(nonatomic) NSString* mask;  
@property(nonatomic) NSNumber* version;  
- (id) mask: (NSString*) mask     
    version: (NSNumber*) version;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

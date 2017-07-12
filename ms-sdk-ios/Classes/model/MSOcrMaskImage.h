#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSOcrMaskImage : SWGObject

@property(nonatomic) NSString* mask;  
@property(nonatomic) NSString* version;  
- (id) mask: (NSString*) mask     
    version: (NSString*) version;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

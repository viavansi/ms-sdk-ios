#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSFont : SWGObject

@property(nonatomic) NSString* name;  
@property(nonatomic) NSNumber* size;  
- (id) name: (NSString*) name     
    size: (NSNumber*) size;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

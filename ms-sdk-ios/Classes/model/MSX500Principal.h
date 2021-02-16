#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSX500Principal : SWGObject

@property(nonatomic) NSString* name;  
@property(nonatomic) NSArray* encoded;  
- (id) name: (NSString*) name     
    encoded: (NSArray*) encoded;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

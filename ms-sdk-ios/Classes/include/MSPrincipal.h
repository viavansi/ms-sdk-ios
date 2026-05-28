#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSPrincipal : SWGObject

@property(nonatomic) NSString* name;  
- (id) name: (NSString*) name;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

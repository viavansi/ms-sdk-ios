#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSBatchLink : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* link;  
- (id) code: (NSString*) code     
    link: (NSString*) link;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

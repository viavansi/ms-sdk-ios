#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSStatus : SWGObject

@property(nonatomic) NSString* current;  
@property(nonatomic) NSString* next;  
- (id) current: (NSString*) current     
    next: (NSString*) next;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

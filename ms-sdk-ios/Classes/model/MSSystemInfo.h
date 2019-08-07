#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSSystemInfo : SWGObject

@property(nonatomic) NSString* loadAverage;  
@property(nonatomic) NSString* memory;  
@property(nonatomic) NSString* cpu;  
- (id) loadAverage: (NSString*) loadAverage     
    memory: (NSString*) memory     
    cpu: (NSString*) cpu;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

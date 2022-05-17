#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSSystemInfo : SWGObject

@property(nonatomic) NSString* loadAverage;  
@property(nonatomic) NSString* memory;  
@property(nonatomic) NSString* cpu;  
@property(nonatomic) NSString* memoryLimit;  
@property(nonatomic) NSString* cpuLimit;  
@property(nonatomic) NSNumber* threadsCount;  
@property(nonatomic) NSNumber* tasksCount;  
- (id) loadAverage: (NSString*) loadAverage     
    memory: (NSString*) memory     
    cpu: (NSString*) cpu     
    memoryLimit: (NSString*) memoryLimit     
    cpuLimit: (NSString*) cpuLimit     
    threadsCount: (NSNumber*) threadsCount     
    tasksCount: (NSNumber*) tasksCount;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

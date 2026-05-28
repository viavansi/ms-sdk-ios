#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAlive : SWGObject

@property(nonatomic) NSString* isAlive;  
@property(nonatomic) NSString* pid;  
- (id) isAlive: (NSString*) isAlive     
    pid: (NSString*) pid;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

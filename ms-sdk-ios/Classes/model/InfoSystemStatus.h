#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SystemStatus.h"


@interface InfoSystemStatus : SWGObject

@property(nonatomic) NSString* date;  
@property(nonatomic) NSArray* info;  
- (id) date: (NSString*) date     
    info: (NSArray*) info;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

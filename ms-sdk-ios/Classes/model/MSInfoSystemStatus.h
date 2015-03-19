#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSSystemStatus.h"


@interface MSInfoSystemStatus : SWGObject

@property(nonatomic) NSString* date;  
@property(nonatomic) NSArray* info;  
- (id) date: (NSString*) date     
    info: (NSArray*) info;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

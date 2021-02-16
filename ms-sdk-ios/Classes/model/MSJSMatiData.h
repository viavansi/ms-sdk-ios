#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSJSMatiData : SWGObject

@property(nonatomic) NSNumber* nationalId;  
- (id) nationalId: (NSNumber*) nationalId;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

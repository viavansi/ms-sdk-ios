#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSMessageBuild : SWGObject

@property(nonatomic) NSString* messageCode;  
- (id) messageCode: (NSString*) messageCode;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

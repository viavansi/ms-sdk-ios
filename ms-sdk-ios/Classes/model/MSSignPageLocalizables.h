#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSSignPageLocalizables : SWGObject

@property(nonatomic) NSDictionary* translations;  
- (id) translations: (NSDictionary*) translations;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

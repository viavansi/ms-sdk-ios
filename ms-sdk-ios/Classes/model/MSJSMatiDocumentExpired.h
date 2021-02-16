#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSJSMatiData.h"


@interface MSJSMatiDocumentExpired : SWGObject

@property(nonatomic) MSJSMatiData* data;  
- (id) data: (MSJSMatiData*) data;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

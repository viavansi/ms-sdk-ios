#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSJSMatiDocumentExpired.h"
#import "MSJSMatiAge.h"


@interface MSJSMatiDetails : SWGObject

@property(nonatomic) MSJSMatiAge* age;  
@property(nonatomic) MSJSMatiDocumentExpired* isDocumentExpired;  
- (id) age: (MSJSMatiAge*) age     
    isDocumentExpired: (MSJSMatiDocumentExpired*) isDocumentExpired;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

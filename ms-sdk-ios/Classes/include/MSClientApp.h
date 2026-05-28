#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSClientApp : SWGObject

@property(nonatomic) NSString* typeApp;  
@property(nonatomic) NSString* urlApp;  
- (id) typeApp: (NSString*) typeApp     
    urlApp: (NSString*) urlApp;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

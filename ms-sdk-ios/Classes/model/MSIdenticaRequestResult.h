#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSIdenticaRequestResult : SWGObject

@property(nonatomic) NSString* responseMessage;  
@property(nonatomic) NSString* responseCode;  
- (id) responseMessage: (NSString*) responseMessage     
    responseCode: (NSString*) responseCode;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

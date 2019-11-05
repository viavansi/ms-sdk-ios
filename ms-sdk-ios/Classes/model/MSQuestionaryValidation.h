#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSQuestionaryValidation : SWGObject

@property(nonatomic) NSString* appId;  
@property(nonatomic) NSNumber* valid;  
@property(nonatomic) NSString* responseXML;  
- (id) appId: (NSString*) appId     
    valid: (NSNumber*) valid     
    responseXML: (NSString*) responseXML;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

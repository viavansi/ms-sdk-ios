#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSQuestionaryValidation : SWGObject

@property(nonatomic) NSString* appId;  
@property(nonatomic) NSNumber* valid;  
@property(nonatomic) NSString* responseXML;  
@property(nonatomic) NSNumber* respCurrentAttempt;  
@property(nonatomic) NSNumber* respMaxAttempts;  
- (id) appId: (NSString*) appId     
    valid: (NSNumber*) valid     
    responseXML: (NSString*) responseXML     
    respCurrentAttempt: (NSNumber*) respCurrentAttempt     
    respMaxAttempts: (NSNumber*) respMaxAttempts;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

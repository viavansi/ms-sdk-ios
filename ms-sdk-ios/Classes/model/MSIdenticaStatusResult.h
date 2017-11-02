#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSIdenticaOperationStatus.h"


@interface MSIdenticaStatusResult : SWGObject

@property(nonatomic) MSIdenticaOperationStatus* operationStatus;  
@property(nonatomic) NSString* responseCode;  
@property(nonatomic) NSString* responseMessage;  
- (id) operationStatus: (MSIdenticaOperationStatus*) operationStatus     
    responseCode: (NSString*) responseCode     
    responseMessage: (NSString*) responseMessage;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

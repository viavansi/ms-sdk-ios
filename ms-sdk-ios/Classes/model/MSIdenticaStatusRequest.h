#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSIdenticaStatusRequest : SWGObject

@property(nonatomic) NSString* requestId;  
@property(nonatomic) NSString* identicaServer;  
- (id) requestId: (NSString*) requestId     
    identicaServer: (NSString*) identicaServer;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

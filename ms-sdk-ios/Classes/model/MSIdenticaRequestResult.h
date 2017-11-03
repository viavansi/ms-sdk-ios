#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSIdenticaRequestResult : SWGObject

@property(nonatomic) NSString* identicaServer;  
@property(nonatomic) NSString* clientId;  
@property(nonatomic) NSString* userId;  
@property(nonatomic) NSString* serialId;  
- (id) identicaServer: (NSString*) identicaServer     
    clientId: (NSString*) clientId     
    userId: (NSString*) userId     
    serialId: (NSString*) serialId;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSJSTransfer.h"
#import "MSPolicy.h"


@interface MSMessageSummary : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSArray* policies;  
@property(nonatomic) NSArray* transfers;  
- (id) code: (NSString*) code     
    status: (NSString*) status     
    policies: (NSArray*) policies     
    transfers: (NSArray*) transfers;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

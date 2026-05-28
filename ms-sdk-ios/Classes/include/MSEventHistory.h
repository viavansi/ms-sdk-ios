#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSErrorResponse.h"


@interface MSEventHistory : SWGObject

@property(nonatomic) NSNumber* start;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSNumber* ends;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSString* taskName;  
@property(nonatomic) NSNumber* order;  
@property(nonatomic) MSErrorResponse* error;  
- (id) start: (NSNumber*) start     
    ends: (NSNumber*) ends     
    taskName: (NSString*) taskName     
    order: (NSNumber*) order     
    error: (MSErrorResponse*) error;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

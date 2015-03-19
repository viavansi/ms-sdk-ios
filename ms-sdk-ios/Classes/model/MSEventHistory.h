#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSErrorResponse.h"


@interface MSEventHistory : SWGObject

@property(nonatomic) SWGDate* start;  
@property(nonatomic) SWGDate* ends;  
@property(nonatomic) NSString* taskName;  
@property(nonatomic) NSNumber* order;  
@property(nonatomic) MSErrorResponse* error;  
- (id) start: (SWGDate*) start     
    ends: (SWGDate*) ends     
    taskName: (NSString*) taskName     
    order: (NSNumber*) order     
    error: (MSErrorResponse*) error;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

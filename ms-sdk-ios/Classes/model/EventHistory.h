#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "ErrorResponse.h"


@interface EventHistory : SWGObject

@property(nonatomic) SWGDate* start;  
@property(nonatomic) SWGDate* ends;  
@property(nonatomic) NSString* taskName;  
@property(nonatomic) NSNumber* order;  
@property(nonatomic) ErrorResponse* error;  
- (id) start: (SWGDate*) start     
    ends: (SWGDate*) ends     
    taskName: (NSString*) taskName     
    order: (NSNumber*) order     
    error: (ErrorResponse*) error;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

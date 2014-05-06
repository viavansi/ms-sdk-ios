#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "SWGErrorResponse.h"

@interface SWGEventHistory : SWGObject

@property(nonatomic) SWGDate* start;  

@property(nonatomic) SWGDate* ends;  

@property(nonatomic) NSString* taskName;  

@property(nonatomic) NSNumber* order;  

@property(nonatomic) SWGErrorResponse* error;  

- (id) start: (SWGDate*) start
     ends: (SWGDate*) ends
     taskName: (NSString*) taskName
     order: (NSNumber*) order
     error: (SWGErrorResponse*) error;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


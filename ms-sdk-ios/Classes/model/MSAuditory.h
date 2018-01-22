#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSGeolocation.h"


@interface MSAuditory : SWGObject

@property(nonatomic) SWGDate* date;  
@property(nonatomic) NSString* ip;  
@property(nonatomic) MSGeolocation* geolocation;  
@property(nonatomic) NSString* action;  
@property(nonatomic) NSString* data;  
@property(nonatomic) NSString* detail;  
- (id) date: (SWGDate*) date     
    ip: (NSString*) ip     
    geolocation: (MSGeolocation*) geolocation     
    action: (NSString*) action     
    data: (NSString*) data     
    detail: (NSString*) detail;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSGeolocation.h"


@interface MSAuditory : SWGObject

@property(nonatomic) NSString* action;  
@property(nonatomic) SWGDate* date;  
@property(nonatomic) NSString* ip;  
@property(nonatomic) NSString* data;  
@property(nonatomic) NSString* detail;  
@property(nonatomic) MSGeolocation* geolocation;  
- (id) action: (NSString*) action     
    date: (SWGDate*) date     
    ip: (NSString*) ip     
    data: (NSString*) data     
    detail: (NSString*) detail     
    geolocation: (MSGeolocation*) geolocation;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

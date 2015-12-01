#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSGeolocation : SWGObject

@property(nonatomic) NSNumber* accuracy;  
@property(nonatomic) NSNumber* latitude;  
@property(nonatomic) NSNumber* longitude;  
@property(nonatomic) NSString* locationData;  
@property(nonatomic) NSString* locationInfo;  
- (id) accuracy: (NSNumber*) accuracy     
    latitude: (NSNumber*) latitude     
    longitude: (NSNumber*) longitude     
    locationData: (NSString*) locationData     
    locationInfo: (NSString*) locationInfo;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

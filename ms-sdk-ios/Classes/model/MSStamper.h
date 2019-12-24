#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPositionsMatch.h"


@interface MSStamper : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* rotation;  
@property(nonatomic) NSNumber* width;  
@property(nonatomic) NSNumber* height;  
@property(nonatomic) NSNumber* xAxis;  
@property(nonatomic) NSNumber* yAxis;  
@property(nonatomic) NSNumber* page;  
@property(nonatomic) NSString* imageBase64;  
@property(nonatomic) NSString* positionsKey;  
@property(nonatomic) NSString* timeZoneId;  
@property(nonatomic) NSArray* positionsMatch;  
- (id) type: (NSString*) type     
    rotation: (NSString*) rotation     
    width: (NSNumber*) width     
    height: (NSNumber*) height     
    xAxis: (NSNumber*) xAxis     
    yAxis: (NSNumber*) yAxis     
    page: (NSNumber*) page     
    imageBase64: (NSString*) imageBase64     
    positionsKey: (NSString*) positionsKey     
    timeZoneId: (NSString*) timeZoneId     
    positionsMatch: (NSArray*) positionsMatch;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

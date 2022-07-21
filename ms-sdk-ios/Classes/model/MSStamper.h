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
@property(nonatomic) NSString* textLine1;  
@property(nonatomic) NSString* textLine2;  
@property(nonatomic) NSString* textLine3;  
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
    textLine1: (NSString*) textLine1     
    textLine2: (NSString*) textLine2     
    textLine3: (NSString*) textLine3     
    positionsMatch: (NSArray*) positionsMatch;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPositionsMatch.h"


@interface MSStamper : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* rotation;  
@property(nonatomic) NSNumber* width;  
@property(nonatomic) NSNumber* height;  
@property(nonatomic) NSNumber* getxAxis;  
@property(nonatomic) NSNumber* getyAxis;  
@property(nonatomic) NSNumber* page;  
@property(nonatomic) NSString* imageBase64;  
@property(nonatomic) NSString* positionsKey;  
@property(nonatomic) NSArray* positionsMatch;  
- (id) type: (NSString*) type     
    rotation: (NSString*) rotation     
    width: (NSNumber*) width     
    height: (NSNumber*) height     
    getxAxis: (NSNumber*) getxAxis     
    getyAxis: (NSNumber*) getyAxis     
    page: (NSNumber*) page     
    imageBase64: (NSString*) imageBase64     
    positionsKey: (NSString*) positionsKey     
    positionsMatch: (NSArray*) positionsMatch;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

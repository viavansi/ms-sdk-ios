#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSEvidencePoint : SWGObject

@property(nonatomic) NSNumber* x;  
@property(nonatomic) NSNumber* y;  
@property(nonatomic) NSNumber* pressure;  
@property(nonatomic) NSNumber* milliseconds;  
@property(nonatomic) NSNumber* penElevation;  
@property(nonatomic) NSNumber* penRotation;  
@property(nonatomic) NSNumber* penAzimuth;  
- (id) x: (NSNumber*) x     
    y: (NSNumber*) y     
    pressure: (NSNumber*) pressure     
    milliseconds: (NSNumber*) milliseconds     
    penElevation: (NSNumber*) penElevation     
    penRotation: (NSNumber*) penRotation     
    penAzimuth: (NSNumber*) penAzimuth;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

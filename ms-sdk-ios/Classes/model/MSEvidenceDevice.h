#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSEvidenceDevice : SWGObject

@property(nonatomic) NSString* manufacturer;  
@property(nonatomic) NSString* model;  
@property(nonatomic) NSString* osVersion;  
@property(nonatomic) NSString* penType;  
@property(nonatomic) NSNumber* maxPressure;  
@property(nonatomic) NSNumber* minPressure;  
@property(nonatomic) NSString* ppi;  
@property(nonatomic) NSNumber* rotationAllowed;  
@property(nonatomic) NSNumber* screenHeight;  
@property(nonatomic) NSNumber* screenWidth;  
- (id) manufacturer: (NSString*) manufacturer     
    model: (NSString*) model     
    osVersion: (NSString*) osVersion     
    penType: (NSString*) penType     
    maxPressure: (NSNumber*) maxPressure     
    minPressure: (NSNumber*) minPressure     
    ppi: (NSString*) ppi     
    rotationAllowed: (NSNumber*) rotationAllowed     
    screenHeight: (NSNumber*) screenHeight     
    screenWidth: (NSNumber*) screenWidth;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

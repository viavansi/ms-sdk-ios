#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPosition.h"
#import "MSJSOcrFieldExtractionResult.h"
#import "MSGeolocation.h"
#import "MSEvidenceDevice.h"


@interface MSEvidenceImage : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* evidenceCode;  
@property(nonatomic) NSString* base64Image;  
@property(nonatomic) NSString* ocrTemplate;  
@property(nonatomic) NSArray* ocrFieldExtractionResult;  
@property(nonatomic) MSGeolocation* geolocation;  
@property(nonatomic) MSEvidenceDevice* device;  
@property(nonatomic) NSArray* positions;  
@property(nonatomic) NSNumber* imageQuality;  
@property(nonatomic) NSNumber* imageScaleFactor;  
- (id) messageCode: (NSString*) messageCode     
    evidenceCode: (NSString*) evidenceCode     
    base64Image: (NSString*) base64Image     
    ocrTemplate: (NSString*) ocrTemplate     
    ocrFieldExtractionResult: (NSArray*) ocrFieldExtractionResult     
    geolocation: (MSGeolocation*) geolocation     
    device: (MSEvidenceDevice*) device     
    positions: (NSArray*) positions     
    imageQuality: (NSNumber*) imageQuality     
    imageScaleFactor: (NSNumber*) imageScaleFactor;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

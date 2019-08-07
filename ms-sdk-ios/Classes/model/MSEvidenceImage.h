#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "MSGeolocation.h"
#import "MSPosition.h"
#import "MSOcrData.h"
#import "MSEvidenceDevice.h"


@interface MSEvidenceImage : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* evidenceCode;  
@property(nonatomic) NSString* base64Image;  
@property(nonatomic) MSGeolocation* geolocation;  
@property(nonatomic) MSEvidenceDevice* device;  
@property(nonatomic) NSArray* positions;  
@property(nonatomic) NSNumber* imageQuality;  
@property(nonatomic) NSNumber* imageScaleFactor;  
@property(nonatomic) MSOcrData* ocr;  
@property(nonatomic) NSString* ocrTemplate;  
@property(nonatomic) NSString* ocrFields;  
@property(nonatomic) NSArray* properties;  
- (id) messageCode: (NSString*) messageCode     
    evidenceCode: (NSString*) evidenceCode     
    base64Image: (NSString*) base64Image     
    geolocation: (MSGeolocation*) geolocation     
    device: (MSEvidenceDevice*) device     
    positions: (NSArray*) positions     
    imageQuality: (NSNumber*) imageQuality     
    imageScaleFactor: (NSNumber*) imageScaleFactor     
    ocr: (MSOcrData*) ocr     
    ocrTemplate: (NSString*) ocrTemplate     
    ocrFields: (NSString*) ocrFields     
    properties: (NSArray*) properties;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

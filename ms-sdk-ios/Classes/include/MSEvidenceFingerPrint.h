#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSGeolocation.h"
#import "MSPosition.h"
#import "MSEvidenceDevice.h"


@interface MSEvidenceFingerPrint : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* evidenceCode;  
@property(nonatomic) NSString* base64Image;  
@property(nonatomic) NSString* base64Template;  
@property(nonatomic) NSString* templateAlgorithmic;  
@property(nonatomic) NSString* fingerID;  
@property(nonatomic) MSGeolocation* geolocation;  
@property(nonatomic) MSEvidenceDevice* device;  
@property(nonatomic) NSArray* positions;  
@property(nonatomic) NSNumber* imageQuality;  
@property(nonatomic) NSNumber* imageScaleFactor;  
@property(nonatomic) NSNumber* clientTimestamp;  
@property(nonatomic) NSNumber* serviceTimestamp;  
@property(nonatomic) NSString* serviceTimestampType;  
- (id) messageCode: (NSString*) messageCode     
    evidenceCode: (NSString*) evidenceCode     
    base64Image: (NSString*) base64Image     
    base64Template: (NSString*) base64Template     
    templateAlgorithmic: (NSString*) templateAlgorithmic     
    fingerID: (NSString*) fingerID     
    geolocation: (MSGeolocation*) geolocation     
    device: (MSEvidenceDevice*) device     
    positions: (NSArray*) positions     
    imageQuality: (NSNumber*) imageQuality     
    imageScaleFactor: (NSNumber*) imageScaleFactor     
    clientTimestamp: (NSNumber*) clientTimestamp     
    serviceTimestamp: (NSNumber*) serviceTimestamp     
    serviceTimestampType: (NSString*) serviceTimestampType;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

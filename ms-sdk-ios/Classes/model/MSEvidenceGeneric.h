#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPosition.h"
#import "MSGeolocation.h"
#import "MSParam.h"
#import "MSEvidenceDevice.h"


@interface MSEvidenceGeneric : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* evidenceCode;  
@property(nonatomic) MSGeolocation* geolocation;  
@property(nonatomic) MSEvidenceDevice* device;  
@property(nonatomic) NSArray* positions;  
@property(nonatomic) NSArray* properties;  
@property(nonatomic) NSString* base64Image;  
@property(nonatomic) NSString* providerId;  
@property(nonatomic) NSString* evidenceDescription;  
@property(nonatomic) NSNumber* imageScaleFactor;  
@property(nonatomic) NSNumber* imageQuality;  
- (id) messageCode: (NSString*) messageCode     
    evidenceCode: (NSString*) evidenceCode     
    geolocation: (MSGeolocation*) geolocation     
    device: (MSEvidenceDevice*) device     
    positions: (NSArray*) positions     
    properties: (NSArray*) properties     
    base64Image: (NSString*) base64Image     
    providerId: (NSString*) providerId     
    evidenceDescription: (NSString*) evidenceDescription     
    imageScaleFactor: (NSNumber*) imageScaleFactor     
    imageQuality: (NSNumber*) imageQuality;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

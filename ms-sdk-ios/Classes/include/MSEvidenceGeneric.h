#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "MSGeolocation.h"
#import "MSPosition.h"
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
@property(nonatomic) NSNumber* clientTimestamp;  
@property(nonatomic) NSNumber* serviceTimestamp;  
@property(nonatomic) NSString* serviceTimestampType;  
@property(nonatomic) NSString* evidenceDescription;  
@property(nonatomic) NSNumber* expirationTime;  
@property(nonatomic) NSNumber* imageQuality;  
@property(nonatomic) NSNumber* imageScaleFactor;  
- (id) messageCode: (NSString*) messageCode     
    evidenceCode: (NSString*) evidenceCode     
    geolocation: (MSGeolocation*) geolocation     
    device: (MSEvidenceDevice*) device     
    positions: (NSArray*) positions     
    properties: (NSArray*) properties     
    base64Image: (NSString*) base64Image     
    providerId: (NSString*) providerId     
    clientTimestamp: (NSNumber*) clientTimestamp     
    serviceTimestamp: (NSNumber*) serviceTimestamp     
    serviceTimestampType: (NSString*) serviceTimestampType     
    evidenceDescription: (NSString*) evidenceDescription     
    expirationTime: (NSNumber*) expirationTime     
    imageQuality: (NSNumber*) imageQuality     
    imageScaleFactor: (NSNumber*) imageScaleFactor;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

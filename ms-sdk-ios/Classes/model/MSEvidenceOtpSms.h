#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPosition.h"
#import "MSGeolocation.h"
#import "MSEvidenceDevice.h"


@interface MSEvidenceOtpSms : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* evidenceCode;  
@property(nonatomic) MSGeolocation* geolocation;  
@property(nonatomic) MSEvidenceDevice* device;  
@property(nonatomic) NSArray* positions;  
@property(nonatomic) NSString* operationId;  
@property(nonatomic) NSString* server;  
@property(nonatomic) NSNumber* imageQuality;  
@property(nonatomic) NSNumber* imageScaleFactor;  
- (id) messageCode: (NSString*) messageCode     
    evidenceCode: (NSString*) evidenceCode     
    geolocation: (MSGeolocation*) geolocation     
    device: (MSEvidenceDevice*) device     
    positions: (NSArray*) positions     
    operationId: (NSString*) operationId     
    server: (NSString*) server     
    imageQuality: (NSNumber*) imageQuality     
    imageScaleFactor: (NSNumber*) imageScaleFactor;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

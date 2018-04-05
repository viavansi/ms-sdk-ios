#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSEvidenceStroke.h"
#import "MSGeolocation.h"
#import "MSPosition.h"
#import "MSEvidenceDevice.h"


@interface MSEvidenceSignature : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* policyCode;  
@property(nonatomic) NSString* evidenceCode;  
@property(nonatomic) NSString* base64Image;  
@property(nonatomic) MSGeolocation* geolocation;  
@property(nonatomic) MSEvidenceDevice* device;  
@property(nonatomic) NSArray* strokes;  
@property(nonatomic) NSNumber* signAreaHeight;  
@property(nonatomic) NSNumber* signAreaWidth;  
@property(nonatomic) NSArray* positions;  
@property(nonatomic) NSNumber* imageQuality;  
@property(nonatomic) NSNumber* imageScaleFactor;  
- (id) messageCode: (NSString*) messageCode     
    policyCode: (NSString*) policyCode     
    evidenceCode: (NSString*) evidenceCode     
    base64Image: (NSString*) base64Image     
    geolocation: (MSGeolocation*) geolocation     
    device: (MSEvidenceDevice*) device     
    strokes: (NSArray*) strokes     
    signAreaHeight: (NSNumber*) signAreaHeight     
    signAreaWidth: (NSNumber*) signAreaWidth     
    positions: (NSArray*) positions     
    imageQuality: (NSNumber*) imageQuality     
    imageScaleFactor: (NSNumber*) imageScaleFactor;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

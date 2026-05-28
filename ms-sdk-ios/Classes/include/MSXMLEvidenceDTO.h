#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSXMLPdfPageHashes.h"
#import "MSXMLDeviceDTO.h"
#import "MSXMLPositionDTO.h"
#import "MSXMLGenericEvidenceDTO.h"


@interface MSXMLEvidenceDTO : SWGObject

@property(nonatomic) NSString* locationData;  
@property(nonatomic) NSString* locationInfo;  
@property(nonatomic) NSString* longitude;  
@property(nonatomic) NSString* latitude;  
@property(nonatomic) NSString* pressureMaxValue;  
@property(nonatomic) NSString* pressureMinValue;  
@property(nonatomic) NSString* pressureStylusInfo;  
@property(nonatomic) MSXMLDeviceDTO* deviceInfo;  
@property(nonatomic) MSXMLPositionDTO* position;  
@property(nonatomic) NSArray* positions;  
@property(nonatomic) NSString* hashImage;  
@property(nonatomic) MSXMLPdfPageHashes* hashPdf;  
@property(nonatomic) NSString* cipherAlgorithm;  
@property(nonatomic) NSString* encryptedAesSessionKey;  
@property(nonatomic) NSString* trustedThirdParty;  
@property(nonatomic) MSXMLGenericEvidenceDTO* genericEvidence;  
@property(nonatomic) NSString* cipheredData;  
@property(nonatomic) NSString* evidenceType;  
@property(nonatomic) NSString* evidenceVersion;  
@property(nonatomic) NSNumber* evidenceTimestamp;  
@property(nonatomic) NSNumber* clientTimestamp;  
@property(nonatomic) NSNumber* serviceTimestamp;  
@property(nonatomic) NSString* serviceTimestampType;  
- (id) locationData: (NSString*) locationData     
    locationInfo: (NSString*) locationInfo     
    longitude: (NSString*) longitude     
    latitude: (NSString*) latitude     
    pressureMaxValue: (NSString*) pressureMaxValue     
    pressureMinValue: (NSString*) pressureMinValue     
    pressureStylusInfo: (NSString*) pressureStylusInfo     
    deviceInfo: (MSXMLDeviceDTO*) deviceInfo     
    position: (MSXMLPositionDTO*) position     
    positions: (NSArray*) positions     
    hashImage: (NSString*) hashImage     
    hashPdf: (MSXMLPdfPageHashes*) hashPdf     
    cipherAlgorithm: (NSString*) cipherAlgorithm     
    encryptedAesSessionKey: (NSString*) encryptedAesSessionKey     
    trustedThirdParty: (NSString*) trustedThirdParty     
    genericEvidence: (MSXMLGenericEvidenceDTO*) genericEvidence     
    cipheredData: (NSString*) cipheredData     
    evidenceType: (NSString*) evidenceType     
    evidenceVersion: (NSString*) evidenceVersion     
    evidenceTimestamp: (NSNumber*) evidenceTimestamp     
    clientTimestamp: (NSNumber*) clientTimestamp     
    serviceTimestamp: (NSNumber*) serviceTimestamp     
    serviceTimestampType: (NSString*) serviceTimestampType;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

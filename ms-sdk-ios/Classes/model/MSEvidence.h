#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPosition.h"
#import "MSGeolocation.h"
#import "MSEvidenceFingerPrint.h"
#import "MSEvidenceImage.h"
#import "MSEvidenceSignature.h"


@interface MSEvidence : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* helpText;  
@property(nonatomic) NSString* temporalReference;  
@property(nonatomic) NSArray* positions;  
@property(nonatomic) NSString* metadata;  
@property(nonatomic) NSString* deviceType;  
@property(nonatomic) NSArray* hashPdf;  
@property(nonatomic) NSString* hashImage;  
@property(nonatomic) NSString* algorithmic;  
@property(nonatomic) NSString* fingerID;  
@property(nonatomic) NSString* typeFormatSign;  
@property(nonatomic) NSString* certificateAlias;  
@property(nonatomic) NSString* certificatePassword;  
@property(nonatomic) NSString* metadataCipherPublicKey;  
@property(nonatomic) NSString* encryptionKeyAlias;  
@property(nonatomic) NSNumber* optional;  
@property(nonatomic) MSEvidenceSignature* signatureData;  
@property(nonatomic) MSEvidenceFingerPrint* fingerPrintData;  
@property(nonatomic) MSEvidenceImage* imageData;  
@property(nonatomic) NSString* positionsKey;  
@property(nonatomic) NSNumber* stampsMin;  
@property(nonatomic) NSString* stampsPolicy;  
@property(nonatomic) NSArray* stylus;  
@property(nonatomic) MSGeolocation* geolocation;  /* (since 3.5.0, internal) geolocation info  */
@property(nonatomic) NSString* wacomURL;  
- (id) type: (NSString*) type     
    code: (NSString*) code     
    status: (NSString*) status     
    helpText: (NSString*) helpText     
    temporalReference: (NSString*) temporalReference     
    positions: (NSArray*) positions     
    metadata: (NSString*) metadata     
    deviceType: (NSString*) deviceType     
    hashPdf: (NSArray*) hashPdf     
    hashImage: (NSString*) hashImage     
    algorithmic: (NSString*) algorithmic     
    fingerID: (NSString*) fingerID     
    typeFormatSign: (NSString*) typeFormatSign     
    certificateAlias: (NSString*) certificateAlias     
    certificatePassword: (NSString*) certificatePassword     
    metadataCipherPublicKey: (NSString*) metadataCipherPublicKey     
    encryptionKeyAlias: (NSString*) encryptionKeyAlias     
    optional: (NSNumber*) optional     
    signatureData: (MSEvidenceSignature*) signatureData     
    fingerPrintData: (MSEvidenceFingerPrint*) fingerPrintData     
    imageData: (MSEvidenceImage*) imageData     
    positionsKey: (NSString*) positionsKey     
    stampsMin: (NSNumber*) stampsMin     
    stampsPolicy: (NSString*) stampsPolicy     
    stylus: (NSArray*) stylus     
    geolocation: (MSGeolocation*) geolocation     
    wacomURL: (NSString*) wacomURL;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

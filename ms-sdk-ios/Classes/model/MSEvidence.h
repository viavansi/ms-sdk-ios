#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "MSEvidenceGeneric.h"
#import "MSGeolocation.h"
#import "MSEvidenceSignature.h"
#import "MSEvidenceFingerPrint.h"
#import "MSPosition.h"
#import "MSOcrData.h"
#import "MSEvidenceImage.h"
#import "MSPositionsMatch.h"


@interface MSEvidence : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* _id;  
@property(nonatomic) NSString* enabledExpression;  
@property(nonatomic) NSString* visibleExpression;  
@property(nonatomic) NSNumber* enabled;  
@property(nonatomic) NSNumber* visible;  
@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* helpText;  
@property(nonatomic) NSString* helpDetail;  
@property(nonatomic) NSString* temporalReference;  
@property(nonatomic) NSArray* positions;  
@property(nonatomic) NSArray* metadataList;  
@property(nonatomic) NSString* metadata;  
@property(nonatomic) NSString* deviceType;  
@property(nonatomic) NSArray* hashPdf;  
@property(nonatomic) NSString* hashImage;  
@property(nonatomic) NSString* algorithmic;  
@property(nonatomic) NSString* fingerID;  
@property(nonatomic) NSString* typeFormatSign;  
@property(nonatomic) NSString* certificateAlias;  
@property(nonatomic) NSString* certificatePassword;  
@property(nonatomic) NSString* certificateId;  
@property(nonatomic) NSString* metadataCipherPublicKey;  
@property(nonatomic) NSString* encryptionKeyAlias;  
@property(nonatomic) NSNumber* optional;  
@property(nonatomic) NSNumber* required;  
@property(nonatomic) NSString* ratioH;  
@property(nonatomic) NSString* ratioW;  
@property(nonatomic) MSEvidenceSignature* signatureData;  
@property(nonatomic) MSEvidenceFingerPrint* fingerPrintData;  
@property(nonatomic) MSEvidenceImage* imageData;  
@property(nonatomic) NSString* positionsKey;  
@property(nonatomic) NSArray* positionsMatch;  
@property(nonatomic) NSNumber* stampsMin;  
@property(nonatomic) NSString* stampsPolicy;  
@property(nonatomic) NSArray* stylus;  
@property(nonatomic) MSGeolocation* geolocation;  /* (since 3.5.0, internal) geolocation info  */
@property(nonatomic) NSNumber* imageQuality;  /* (since 3.5.0) calidad de la imagen donde 100 representa el máximo de calidad y 0 el máximo nivel de compresión  */
@property(nonatomic) NSNumber* imageScaleFactor;  /* (since 3.5.0) factor multiplicador del tamaño de la imagen, para permitir zoom, 1, 2, 3  */
@property(nonatomic) MSOcrData* ocr;  
@property(nonatomic) MSEvidenceGeneric* genericData;  
@property(nonatomic) NSString* phone;  
@property(nonatomic) NSString* base64Image;  
@property(nonatomic) NSString* imageText;  
@property(nonatomic) NSString* imageType;  
@property(nonatomic) NSNumber* addLink;  
@property(nonatomic) NSString* recipientKey;  
- (id) type: (NSString*) type     
    _id: (NSString*) _id     
    enabledExpression: (NSString*) enabledExpression     
    visibleExpression: (NSString*) visibleExpression     
    enabled: (NSNumber*) enabled     
    visible: (NSNumber*) visible     
    code: (NSString*) code     
    status: (NSString*) status     
    helpText: (NSString*) helpText     
    helpDetail: (NSString*) helpDetail     
    temporalReference: (NSString*) temporalReference     
    positions: (NSArray*) positions     
    metadataList: (NSArray*) metadataList     
    metadata: (NSString*) metadata     
    deviceType: (NSString*) deviceType     
    hashPdf: (NSArray*) hashPdf     
    hashImage: (NSString*) hashImage     
    algorithmic: (NSString*) algorithmic     
    fingerID: (NSString*) fingerID     
    typeFormatSign: (NSString*) typeFormatSign     
    certificateAlias: (NSString*) certificateAlias     
    certificatePassword: (NSString*) certificatePassword     
    certificateId: (NSString*) certificateId     
    metadataCipherPublicKey: (NSString*) metadataCipherPublicKey     
    encryptionKeyAlias: (NSString*) encryptionKeyAlias     
    optional: (NSNumber*) optional     
    required: (NSNumber*) required     
    ratioH: (NSString*) ratioH     
    ratioW: (NSString*) ratioW     
    signatureData: (MSEvidenceSignature*) signatureData     
    fingerPrintData: (MSEvidenceFingerPrint*) fingerPrintData     
    imageData: (MSEvidenceImage*) imageData     
    positionsKey: (NSString*) positionsKey     
    positionsMatch: (NSArray*) positionsMatch     
    stampsMin: (NSNumber*) stampsMin     
    stampsPolicy: (NSString*) stampsPolicy     
    stylus: (NSArray*) stylus     
    geolocation: (MSGeolocation*) geolocation     
    imageQuality: (NSNumber*) imageQuality     
    imageScaleFactor: (NSNumber*) imageScaleFactor     
    ocr: (MSOcrData*) ocr     
    genericData: (MSEvidenceGeneric*) genericData     
    phone: (NSString*) phone     
    base64Image: (NSString*) base64Image     
    imageText: (NSString*) imageText     
    imageType: (NSString*) imageType     
    addLink: (NSNumber*) addLink     
    recipientKey: (NSString*) recipientKey;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

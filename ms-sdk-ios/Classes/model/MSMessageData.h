#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSItem.h"
#import "MSEvidenceFingerPrint.h"
#import "MSEvidenceImage.h"
#import "MSEvidenceSignature.h"


@interface MSMessageData : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSArray* items;  
@property(nonatomic) NSArray* biometricSignaturesData;  
@property(nonatomic) NSArray* fingerPrintsData;  
@property(nonatomic) NSArray* imagesData;  
- (id) messageCode: (NSString*) messageCode     
    items: (NSArray*) items     
    biometricSignaturesData: (NSArray*) biometricSignaturesData     
    fingerPrintsData: (NSArray*) fingerPrintsData     
    imagesData: (NSArray*) imagesData;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end
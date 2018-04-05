#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSItem.h"
#import "MSEvidenceGeneric.h"
#import "MSEvidenceSignature.h"
#import "MSEvidenceFingerPrint.h"
#import "MSEvidenceImage.h"


@interface MSMessageData : SWGObject

@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSArray* items;  
@property(nonatomic) NSArray* biometricSignaturesData;  
@property(nonatomic) NSArray* fingerPrintsData;  
@property(nonatomic) NSArray* imagesData;  
@property(nonatomic) NSArray* genericData;  
- (id) messageCode: (NSString*) messageCode     
    items: (NSArray*) items     
    biometricSignaturesData: (NSArray*) biometricSignaturesData     
    fingerPrintsData: (NSArray*) fingerPrintsData     
    imagesData: (NSArray*) imagesData     
    genericData: (NSArray*) genericData;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

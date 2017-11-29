#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSEvidenceGeneric.h"
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

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSConfigSignatureDTO.h"


@interface MSSignatureCodeDTO : SWGObject

@property(nonatomic) NSString* custodyPathV1;  
@property(nonatomic) MSConfigSignatureDTO* config;  
@property(nonatomic) NSNumber* valid;  
@property(nonatomic) NSString* custodyPath;  
@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* packaging;  
@property(nonatomic) SWGDate* date;  
@property(nonatomic) NSNumber* cades;  
@property(nonatomic) NSNumber* xades;  
@property(nonatomic) NSNumber* pades;  
- (id) custodyPathV1: (NSString*) custodyPathV1     
    config: (MSConfigSignatureDTO*) config     
    valid: (NSNumber*) valid     
    custodyPath: (NSString*) custodyPath     
    type: (NSString*) type     
    packaging: (NSString*) packaging     
    date: (SWGDate*) date     
    cades: (NSNumber*) cades     
    xades: (NSNumber*) xades     
    pades: (NSNumber*) pades;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

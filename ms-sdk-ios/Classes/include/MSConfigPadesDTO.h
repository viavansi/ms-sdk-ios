#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSStamperDTO.h"


@interface MSConfigPadesDTO : SWGObject

@property(nonatomic) MSStamperDTO* stamper;  
@property(nonatomic) NSString* certificationLevel;  
@property(nonatomic) NSNumber* externalPkcs7Signature;  
@property(nonatomic) NSString* password;  
@property(nonatomic) NSNumber* validatePdfSyntax;  
- (id) stamper: (MSStamperDTO*) stamper     
    certificationLevel: (NSString*) certificationLevel     
    externalPkcs7Signature: (NSNumber*) externalPkcs7Signature     
    password: (NSString*) password     
    validatePdfSyntax: (NSNumber*) validatePdfSyntax;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

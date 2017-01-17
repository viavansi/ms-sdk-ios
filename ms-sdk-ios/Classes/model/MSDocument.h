#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSItem.h"
#import "MSFont.h"


@interface MSDocument : SWGObject

@property(nonatomic) NSString* templateCode;  
@property(nonatomic) NSString* templateReference;  
@property(nonatomic) NSNumber* templateVersion;  
@property(nonatomic) NSString* draftedCode;  
@property(nonatomic) NSString* draftedReference;  
@property(nonatomic) NSString* signedCode;  
@property(nonatomic) NSString* signedID;  
@property(nonatomic) NSString* signedReference;  
@property(nonatomic) NSString* templateType;  
@property(nonatomic) NSNumber* formRequired;  
@property(nonatomic) NSNumber* formDisabled;  
@property(nonatomic) NSArray* items;  
@property(nonatomic) NSNumber* pdfaCompliant;  /* generate pdf compliant with PDF/A-3A ISO 19005-3  */
@property(nonatomic) MSFont* font;  
- (id) templateCode: (NSString*) templateCode     
    templateReference: (NSString*) templateReference     
    templateVersion: (NSNumber*) templateVersion     
    draftedCode: (NSString*) draftedCode     
    draftedReference: (NSString*) draftedReference     
    signedCode: (NSString*) signedCode     
    signedID: (NSString*) signedID     
    signedReference: (NSString*) signedReference     
    templateType: (NSString*) templateType     
    formRequired: (NSNumber*) formRequired     
    formDisabled: (NSNumber*) formDisabled     
    items: (NSArray*) items     
    pdfaCompliant: (NSNumber*) pdfaCompliant     
    font: (MSFont*) font;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

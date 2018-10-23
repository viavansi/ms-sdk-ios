#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSCustomization.h"
#import "MSPolicy.h"
#import "MSAcrofieldPosition.h"
#import "MSFont.h"


@interface MSSetting : SWGObject

@property(nonatomic) NSString* titleKey;  
@property(nonatomic) NSString* descriptionKey;  
@property(nonatomic) MSPolicy* policy;  
@property(nonatomic) NSString* computec_key;  
@property(nonatomic) NSArray* policies;  
@property(nonatomic) NSString* callbackAuthorization;  
@property(nonatomic) NSString* callbackURL;  
@property(nonatomic) NSString* callbackMails;  
@property(nonatomic) NSArray* callbackMailsFormKeys;  
@property(nonatomic) NSString* validateCode;  
@property(nonatomic) NSString* workflow;  
@property(nonatomic) MSFont* font;  
@property(nonatomic) NSArray* acrofieldsPositions;  
@property(nonatomic) NSNumber* readDocumentRequired;  
@property(nonatomic) NSNumber* allowDocumentResend;  
@property(nonatomic) MSCustomization* customization;  
- (id) titleKey: (NSString*) titleKey     
    descriptionKey: (NSString*) descriptionKey     
    policy: (MSPolicy*) policy     
    computec_key: (NSString*) computec_key     
    policies: (NSArray*) policies     
    callbackAuthorization: (NSString*) callbackAuthorization     
    callbackURL: (NSString*) callbackURL     
    callbackMails: (NSString*) callbackMails     
    callbackMailsFormKeys: (NSArray*) callbackMailsFormKeys     
    validateCode: (NSString*) validateCode     
    workflow: (NSString*) workflow     
    font: (MSFont*) font     
    acrofieldsPositions: (NSArray*) acrofieldsPositions     
    readDocumentRequired: (NSNumber*) readDocumentRequired     
    allowDocumentResend: (NSNumber*) allowDocumentResend     
    customization: (MSCustomization*) customization;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

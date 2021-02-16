#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSStyle : SWGObject

@property(nonatomic) NSString* emailTemplateActionFile;  
@property(nonatomic) NSString* emailTemplateFile;  
@property(nonatomic) NSString* styleFile;  
@property(nonatomic) NSString* smsImage;  
@property(nonatomic) NSString* mailImage;  
@property(nonatomic) NSString* checkImage;  
@property(nonatomic) NSString* fingerprintImage;  
@property(nonatomic) NSString* identicaImage;  
@property(nonatomic) NSString* questionImage;  
@property(nonatomic) NSString* experianImage;  
@property(nonatomic) NSString* lisimImage;  
@property(nonatomic) NSString* jsonStyleFile;  
- (id) emailTemplateActionFile: (NSString*) emailTemplateActionFile     
    emailTemplateFile: (NSString*) emailTemplateFile     
    styleFile: (NSString*) styleFile     
    smsImage: (NSString*) smsImage     
    mailImage: (NSString*) mailImage     
    checkImage: (NSString*) checkImage     
    fingerprintImage: (NSString*) fingerprintImage     
    identicaImage: (NSString*) identicaImage     
    questionImage: (NSString*) questionImage     
    experianImage: (NSString*) experianImage     
    lisimImage: (NSString*) lisimImage     
    jsonStyleFile: (NSString*) jsonStyleFile;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

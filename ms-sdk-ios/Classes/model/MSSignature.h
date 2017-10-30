#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSStamper.h"


@interface MSSignature : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* helpText;  
@property(nonatomic) NSString* certificateAlias;  
@property(nonatomic) NSString* certificatePassword;  
@property(nonatomic) NSString* typeFormatSign;  
@property(nonatomic) NSString* dataToSign;  
@property(nonatomic) NSString* idSign;  
@property(nonatomic) NSNumber* custodyDisabled;  
@property(nonatomic) NSArray* stampers;  
@property(nonatomic) NSNumber* lastUpdated;  
@property(nonatomic) NSString* certificationLevel;  
- (id) type: (NSString*) type     
    code: (NSString*) code     
    status: (NSString*) status     
    helpText: (NSString*) helpText     
    certificateAlias: (NSString*) certificateAlias     
    certificatePassword: (NSString*) certificatePassword     
    typeFormatSign: (NSString*) typeFormatSign     
    dataToSign: (NSString*) dataToSign     
    idSign: (NSString*) idSign     
    custodyDisabled: (NSNumber*) custodyDisabled     
    stampers: (NSArray*) stampers     
    lastUpdated: (NSNumber*) lastUpdated     
    certificationLevel: (NSString*) certificationLevel;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

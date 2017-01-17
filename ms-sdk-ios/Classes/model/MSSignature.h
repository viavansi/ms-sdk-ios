#import <Foundation/Foundation.h>
#import "SWGObject.h"


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
- (id) type: (NSString*) type     
    code: (NSString*) code     
    status: (NSString*) status     
    helpText: (NSString*) helpText     
    certificateAlias: (NSString*) certificateAlias     
    certificatePassword: (NSString*) certificatePassword     
    typeFormatSign: (NSString*) typeFormatSign     
    dataToSign: (NSString*) dataToSign     
    idSign: (NSString*) idSign     
    custodyDisabled: (NSNumber*) custodyDisabled;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

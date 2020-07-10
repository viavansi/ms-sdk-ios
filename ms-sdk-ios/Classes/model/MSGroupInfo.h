#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSStyle.h"
#import "MSProperty.h"
#import "MSConfiguration.h"
#import "MSTemplate.h"
#import "MSUser.h"


@interface MSGroupInfo : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* title;  
@property(nonatomic) NSString* tsaUrl;  
@property(nonatomic) NSString* tsaUser;  
@property(nonatomic) NSString* tsaUserPassword;  
@property(nonatomic) NSString* tsaPolicyId;  
@property(nonatomic) NSString* tsaAlias;  
@property(nonatomic) NSString* smsUrl;  
@property(nonatomic) NSString* smsUser;  
@property(nonatomic) NSString* smsPassword;  
@property(nonatomic) NSString* transferSystem;  
@property(nonatomic) NSNumber* deleteSignedDocuments;  
@property(nonatomic) NSNumber* ttlMessage;  
@property(nonatomic) NSNumber* tteNotification;  
@property(nonatomic) NSString* custodyCode;  
@property(nonatomic) NSNumber* tsaAuthTls;  
@property(nonatomic) NSNumber* dataProtectionLevel;  
@property(nonatomic) NSString* verificationDocUrl;  
@property(nonatomic) NSString* callbackMailStatus;  
@property(nonatomic) NSString* referenceCode;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) MSStyle* style;  
@property(nonatomic) NSArray* properties;  
@property(nonatomic) NSArray* apps;  
@property(nonatomic) NSArray* templates;  
@property(nonatomic) NSArray* users;  
- (id) code: (NSString*) code     
    title: (NSString*) title     
    tsaUrl: (NSString*) tsaUrl     
    tsaUser: (NSString*) tsaUser     
    tsaUserPassword: (NSString*) tsaUserPassword     
    tsaPolicyId: (NSString*) tsaPolicyId     
    tsaAlias: (NSString*) tsaAlias     
    smsUrl: (NSString*) smsUrl     
    smsUser: (NSString*) smsUser     
    smsPassword: (NSString*) smsPassword     
    transferSystem: (NSString*) transferSystem     
    deleteSignedDocuments: (NSNumber*) deleteSignedDocuments     
    ttlMessage: (NSNumber*) ttlMessage     
    tteNotification: (NSNumber*) tteNotification     
    custodyCode: (NSString*) custodyCode     
    tsaAuthTls: (NSNumber*) tsaAuthTls     
    dataProtectionLevel: (NSNumber*) dataProtectionLevel     
    verificationDocUrl: (NSString*) verificationDocUrl     
    callbackMailStatus: (NSString*) callbackMailStatus     
    referenceCode: (NSString*) referenceCode     
    _description: (NSString*) _description     
    style: (MSStyle*) style     
    properties: (NSArray*) properties     
    apps: (NSArray*) apps     
    templates: (NSArray*) templates     
    users: (NSArray*) users;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

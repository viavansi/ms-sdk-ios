#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSConfigTsaDTO : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* url;  
@property(nonatomic) NSString* user;  
@property(nonatomic) NSString* password;  
@property(nonatomic) NSString* policyId;  
@property(nonatomic) NSString* timestampAlgorithm;  
@property(nonatomic) NSString* extensionOid;  
@property(nonatomic) NSString* extensionValue;  
- (id) type: (NSString*) type     
    url: (NSString*) url     
    user: (NSString*) user     
    password: (NSString*) password     
    policyId: (NSString*) policyId     
    timestampAlgorithm: (NSString*) timestampAlgorithm     
    extensionOid: (NSString*) extensionOid     
    extensionValue: (NSString*) extensionValue;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

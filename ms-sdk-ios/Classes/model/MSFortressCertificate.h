#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSFortressCertificate : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* name;  
@property(nonatomic) NSString* _description;  
@property(nonatomic) NSNumber* dateIssued;  
@property(nonatomic) NSNumber* dateExpired;  
@property(nonatomic) NSNumber* dateRevoked;  
@property(nonatomic) NSString* serialNumber;  
@property(nonatomic) NSString* issuer;  
@property(nonatomic) NSString* subject;  
@property(nonatomic) NSString* pem;  
@property(nonatomic) NSDictionary* issuerMap;  
@property(nonatomic) NSDictionary* subjectMap;  
@property(nonatomic) NSNumber* delegated;  
@property(nonatomic) NSString* level;  
- (id) code: (NSString*) code     
    name: (NSString*) name     
    _description: (NSString*) _description     
    dateIssued: (NSNumber*) dateIssued     
    dateExpired: (NSNumber*) dateExpired     
    dateRevoked: (NSNumber*) dateRevoked     
    serialNumber: (NSString*) serialNumber     
    issuer: (NSString*) issuer     
    subject: (NSString*) subject     
    pem: (NSString*) pem     
    issuerMap: (NSDictionary*) issuerMap     
    subjectMap: (NSDictionary*) subjectMap     
    delegated: (NSNumber*) delegated     
    level: (NSString*) level;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

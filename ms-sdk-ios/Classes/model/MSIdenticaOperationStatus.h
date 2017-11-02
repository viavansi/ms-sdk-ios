#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSIdenticaOperationStatus : SWGObject

@property(nonatomic) NSString* responseCode;  
@property(nonatomic) NSString* clientId;  
@property(nonatomic) NSString* serviceId;  
@property(nonatomic) NSString* captureFormat;  
@property(nonatomic) NSString* error;  
@property(nonatomic) NSString* serviceResponseCode;  
@property(nonatomic) NSNumber* endDate;  
@property(nonatomic) NSString* version;  
@property(nonatomic) NSString* fingerprintReferenceCount;  
@property(nonatomic) NSString* fingerprintReferenceFormat;  
@property(nonatomic) NSString* serviceResponse;  
@property(nonatomic) NSString* authenticationResponse;  
@property(nonatomic) NSString* pin;  
@property(nonatomic) NSString* name1;  
@property(nonatomic) NSString* name2;  
@property(nonatomic) NSString* surname1;  
@property(nonatomic) NSString* surname2;  
@property(nonatomic) NSString* generationDate;  
@property(nonatomic) NSString* generationLocation;  
@property(nonatomic) NSString* operationCode;  
@property(nonatomic) NSString* fullName;  
- (id) responseCode: (NSString*) responseCode     
    clientId: (NSString*) clientId     
    serviceId: (NSString*) serviceId     
    captureFormat: (NSString*) captureFormat     
    error: (NSString*) error     
    serviceResponseCode: (NSString*) serviceResponseCode     
    endDate: (NSNumber*) endDate     
    version: (NSString*) version     
    fingerprintReferenceCount: (NSString*) fingerprintReferenceCount     
    fingerprintReferenceFormat: (NSString*) fingerprintReferenceFormat     
    serviceResponse: (NSString*) serviceResponse     
    authenticationResponse: (NSString*) authenticationResponse     
    pin: (NSString*) pin     
    name1: (NSString*) name1     
    name2: (NSString*) name2     
    surname1: (NSString*) surname1     
    surname2: (NSString*) surname2     
    generationDate: (NSString*) generationDate     
    generationLocation: (NSString*) generationLocation     
    operationCode: (NSString*) operationCode     
    fullName: (NSString*) fullName;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

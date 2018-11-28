#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "MSCheck.h"
#import "MSAttachment.h"
#import "MSEvidence.h"
#import "MSSignature.h"
#import "MSErrorResponse.h"


@interface MSPolicy : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* userCode;  
@property(nonatomic) NSString* typeFormatSign;  
@property(nonatomic) NSString* typeSign;  
@property(nonatomic) NSNumber* signByServer;  
@property(nonatomic) NSString* certificateAlias;  
@property(nonatomic) NSString* certificatePassword;  
@property(nonatomic) NSString* idTemporal;  
@property(nonatomic) NSString* idSign;  
@property(nonatomic) NSArray* paramList;  
@property(nonatomic) NSArray* evidences;  
@property(nonatomic) NSArray* signatures;  
@property(nonatomic) MSErrorResponse* error;  
@property(nonatomic) NSArray* attachments;  
@property(nonatomic) NSArray* checklist;  /* (since 3.4.0) checklist actions  */
- (id) code: (NSString*) code     
    userCode: (NSString*) userCode     
    typeFormatSign: (NSString*) typeFormatSign     
    typeSign: (NSString*) typeSign     
    signByServer: (NSNumber*) signByServer     
    certificateAlias: (NSString*) certificateAlias     
    certificatePassword: (NSString*) certificatePassword     
    idTemporal: (NSString*) idTemporal     
    idSign: (NSString*) idSign     
    paramList: (NSArray*) paramList     
    evidences: (NSArray*) evidences     
    signatures: (NSArray*) signatures     
    error: (MSErrorResponse*) error     
    attachments: (NSArray*) attachments     
    checklist: (NSArray*) checklist;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

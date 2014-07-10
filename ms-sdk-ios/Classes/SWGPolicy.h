#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGEvidence.h"
#import "SWGErrorResponse.h"
#import "SWGParam.h"

@interface SWGPolicy : SWGObject

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

@property(nonatomic) SWGErrorResponse* error;  

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
     error: (SWGErrorResponse*) error;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end


#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"
#import "MSAuditoryMetadata.h"
#import "MSGeolocation.h"


@interface MSAuditory : SWGObject

@property(nonatomic) NSString* action;  
@property(nonatomic) NSString* code;  
@property(nonatomic) SWGDate* date;  
@property(nonatomic) NSString* app;  
@property(nonatomic) NSString* user;  
@property(nonatomic) NSString* ip;  
@property(nonatomic) NSString* data;  
@property(nonatomic) NSString* detail;  
@property(nonatomic) NSString* userAgent;  
@property(nonatomic) NSString* sessionId;  
@property(nonatomic) MSGeolocation* geolocation;  
@property(nonatomic) NSArray* metadatas;  
@property(nonatomic) NSNumber* internal;  
@property(nonatomic) NSNumber* time;  
- (id) action: (NSString*) action     
    code: (NSString*) code     
    date: (SWGDate*) date     
    app: (NSString*) app     
    user: (NSString*) user     
    ip: (NSString*) ip     
    data: (NSString*) data     
    detail: (NSString*) detail     
    userAgent: (NSString*) userAgent     
    sessionId: (NSString*) sessionId     
    geolocation: (MSGeolocation*) geolocation     
    metadatas: (NSArray*) metadatas     
    internal: (NSNumber*) internal     
    time: (NSNumber*) time;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

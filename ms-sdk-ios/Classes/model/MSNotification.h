#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "SWGDate.h"
#import "MSDevice.h"
#import "MSSharedLink.h"


@interface MSNotification : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* messageCode;  
@property(nonatomic) NSString* validateCode;  
@property(nonatomic) NSString* text;  
@property(nonatomic) NSString* detail;  
@property(nonatomic) NSString* sound;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* notificationType;  
@property(nonatomic) NSString* location;  
@property(nonatomic) MSSharedLink* sharedLink;  
@property(nonatomic) SWGDate* updateDate;  
@property(nonatomic) NSArray* metadata;  
@property(nonatomic) NSArray* devices;  
- (id) code: (NSString*) code     
    messageCode: (NSString*) messageCode     
    validateCode: (NSString*) validateCode     
    text: (NSString*) text     
    detail: (NSString*) detail     
    sound: (NSString*) sound     
    status: (NSString*) status     
    notificationType: (NSString*) notificationType     
    location: (NSString*) location     
    sharedLink: (MSSharedLink*) sharedLink     
    updateDate: (SWGDate*) updateDate     
    metadata: (NSArray*) metadata     
    devices: (NSArray*) devices;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

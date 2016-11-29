#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "MSDevice.h"
#import "MSSharedLink.h"


@interface MSNotification : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* validateCode;  
@property(nonatomic) NSString* text;  
@property(nonatomic) NSString* detail;  
@property(nonatomic) NSString* sound;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* location;  
@property(nonatomic) MSSharedLink* sharedLink;  
@property(nonatomic) NSArray* metadata;  
@property(nonatomic) NSArray* devices;  
- (id) code: (NSString*) code     
    validateCode: (NSString*) validateCode     
    text: (NSString*) text     
    detail: (NSString*) detail     
    sound: (NSString*) sound     
    status: (NSString*) status     
    location: (NSString*) location     
    sharedLink: (MSSharedLink*) sharedLink     
    metadata: (NSArray*) metadata     
    devices: (NSArray*) devices;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

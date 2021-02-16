#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSXMLDeviceDTO : SWGObject

@property(nonatomic) NSString* app;  
@property(nonatomic) NSString* manufacturer;  
@property(nonatomic) NSString* model;  
@property(nonatomic) NSString* osVersion;  
@property(nonatomic) NSString* ip;  
- (id) app: (NSString*) app     
    manufacturer: (NSString*) manufacturer     
    model: (NSString*) model     
    osVersion: (NSString*) osVersion     
    ip: (NSString*) ip;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

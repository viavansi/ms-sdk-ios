#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSImageProviderConfig : SWGObject

@property(nonatomic) NSString* providerId;  
@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSString* value;  
@property(nonatomic) NSString* extension;  
- (id) providerId: (NSString*) providerId     
    groupCode: (NSString*) groupCode     
    value: (NSString*) value     
    extension: (NSString*) extension;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

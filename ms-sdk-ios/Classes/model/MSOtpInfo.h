#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSOtpInfo : SWGObject

@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* recipient;  
@property(nonatomic) NSString* groupTitle;  
@property(nonatomic) NSString* groupDesc;  
- (id) groupCode: (NSString*) groupCode     
    type: (NSString*) type     
    recipient: (NSString*) recipient     
    groupTitle: (NSString*) groupTitle     
    groupDesc: (NSString*) groupDesc;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

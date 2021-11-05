#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSBatchLinkRequest : SWGObject

@property(nonatomic) NSString* userCode;  
@property(nonatomic) NSString* groupCode;  
@property(nonatomic) NSString* redirectURL;  
@property(nonatomic) NSNumber* index;  
@property(nonatomic) NSNumber* max;  
- (id) userCode: (NSString*) userCode     
    groupCode: (NSString*) groupCode     
    redirectURL: (NSString*) redirectURL     
    index: (NSNumber*) index     
    max: (NSNumber*) max;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAuditTrailDownloadInfo : SWGObject

@property(nonatomic) NSString* buttonTitle;  
@property(nonatomic) NSString* buttonColor;  
@property(nonatomic) NSString* url;  
- (id) buttonTitle: (NSString*) buttonTitle     
    buttonColor: (NSString*) buttonColor     
    url: (NSString*) url;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

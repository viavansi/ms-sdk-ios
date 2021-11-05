#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAuditTrailDownloadInfo.h"


@interface MSAuditTrailDownload : SWGObject

@property(nonatomic) NSArray* downloads;  
- (id) downloads: (NSArray*) downloads;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

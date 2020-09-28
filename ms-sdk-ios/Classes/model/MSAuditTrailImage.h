#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAuditTrailImage : SWGObject

@property(nonatomic) NSString* relativePath;  
@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* base64Content;  
@property(nonatomic) NSNumber* height;  
@property(nonatomic) NSNumber* width;  
@property(nonatomic) NSString* imageFormat;  
- (id) relativePath: (NSString*) relativePath     
    code: (NSString*) code     
    base64Content: (NSString*) base64Content     
    height: (NSNumber*) height     
    width: (NSNumber*) width     
    imageFormat: (NSString*) imageFormat;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

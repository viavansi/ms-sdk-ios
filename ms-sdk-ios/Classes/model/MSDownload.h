#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface MSDownload : SWGObject

@property(nonatomic) NSString* link;  
@property(nonatomic) NSString* md5;  
@property(nonatomic) NSString* fileName;  
@property(nonatomic) SWGDate* expires;  
@property(nonatomic) NSString* base64;  
- (id) link: (NSString*) link     
    md5: (NSString*) md5     
    fileName: (NSString*) fileName     
    expires: (SWGDate*) expires     
    base64: (NSString*) base64;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

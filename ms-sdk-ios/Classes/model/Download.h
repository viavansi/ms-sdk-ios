#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDate.h"


@interface Download : SWGObject

@property(nonatomic) NSString* link;  
@property(nonatomic) NSString* md5;  
@property(nonatomic) NSString* fileName;  
@property(nonatomic) SWGDate* expires;  
- (id) link: (NSString*) link     
    md5: (NSString*) md5     
    fileName: (NSString*) fileName     
    expires: (SWGDate*) expires;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

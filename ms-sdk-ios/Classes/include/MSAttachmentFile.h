#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSAttachmentFile : SWGObject

@property(nonatomic) NSString* fileName;  
@property(nonatomic) NSNumber* size;  
- (id) fileName: (NSString*) fileName     
    size: (NSNumber*) size;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

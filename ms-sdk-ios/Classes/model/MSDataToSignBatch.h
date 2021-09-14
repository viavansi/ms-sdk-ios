#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSDataToSign.h"


@interface MSDataToSignBatch : SWGObject

@property(nonatomic) NSArray* dataToSignList;  /* (since 3.7.10) data to sign list  */
- (id) dataToSignList: (NSArray*) dataToSignList;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

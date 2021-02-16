#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSXMLPdfPageHash.h"


@interface MSXMLPdfPageHashes : SWGObject

@property(nonatomic) NSArray* pages;  
- (id) pages: (NSArray*) pages;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

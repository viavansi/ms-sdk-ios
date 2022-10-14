#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSXMLPdfPageHash.h"


@interface MSXMLPdfPageHashes : SWGObject

@property(nonatomic) NSArray* pages;  
@property(nonatomic) NSString* hash;  
- (id) pages: (NSArray*) pages     
    hash: (NSString*) hash;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

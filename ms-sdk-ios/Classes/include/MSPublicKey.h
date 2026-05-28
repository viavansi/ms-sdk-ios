#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSPublicKey : SWGObject

@property(nonatomic) NSArray* encoded;  
@property(nonatomic) NSString* algorithm;  
@property(nonatomic) NSString* format;  
- (id) encoded: (NSArray*) encoded     
    algorithm: (NSString*) algorithm     
    format: (NSString*) format;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

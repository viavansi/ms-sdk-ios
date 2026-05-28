#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSPrivateKey : SWGObject

@property(nonatomic) NSArray* encoded;  
@property(nonatomic) NSString* algorithm;  
@property(nonatomic) NSString* format;  
@property(nonatomic) NSNumber* destroyed;  
- (id) encoded: (NSArray*) encoded     
    algorithm: (NSString*) algorithm     
    format: (NSString*) format     
    destroyed: (NSNumber*) destroyed;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

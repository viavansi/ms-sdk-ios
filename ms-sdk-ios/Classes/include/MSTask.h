#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSTask : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSNumber* finalStatus;  
@property(nonatomic) NSNumber* numThreads;  
@property(nonatomic) NSString* cacheName;  
@property(nonatomic) NSString* classRef;  
- (id) code: (NSString*) code     
    finalStatus: (NSNumber*) finalStatus     
    numThreads: (NSNumber*) numThreads     
    cacheName: (NSString*) cacheName     
    classRef: (NSString*) classRef;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface MSWorkflowTask : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSNumber* finalStatus;  
@property(nonatomic) NSString* cacheName;  
@property(nonatomic) NSString* classRef;  
- (id) code: (NSString*) code     
    finalStatus: (NSNumber*) finalStatus     
    cacheName: (NSString*) cacheName     
    classRef: (NSString*) classRef;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

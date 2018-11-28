#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"


@interface MSAttachment : SWGObject

@property(nonatomic) NSString* type;  
@property(nonatomic) NSString* processType;  
@property(nonatomic) NSString* processId;  
@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* helpText;  
@property(nonatomic) NSString* helpDetail;  
@property(nonatomic) NSNumber* optional;  
@property(nonatomic) NSArray* metadataList;  
- (id) type: (NSString*) type     
    processType: (NSString*) processType     
    processId: (NSString*) processId     
    code: (NSString*) code     
    status: (NSString*) status     
    helpText: (NSString*) helpText     
    helpDetail: (NSString*) helpDetail     
    optional: (NSNumber*) optional     
    metadataList: (NSArray*) metadataList;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

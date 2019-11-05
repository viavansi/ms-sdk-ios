#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "SWGDate.h"


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
@property(nonatomic) SWGDate* date;  
@property(nonatomic) NSString* hash;  
@property(nonatomic) NSString* fileName;  
- (id) type: (NSString*) type     
    processType: (NSString*) processType     
    processId: (NSString*) processId     
    code: (NSString*) code     
    status: (NSString*) status     
    helpText: (NSString*) helpText     
    helpDetail: (NSString*) helpDetail     
    optional: (NSNumber*) optional     
    metadataList: (NSArray*) metadataList     
    date: (SWGDate*) date     
    hash: (NSString*) hash     
    fileName: (NSString*) fileName;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

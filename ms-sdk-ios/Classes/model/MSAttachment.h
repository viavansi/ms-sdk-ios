#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSParam.h"
#import "MSTransfer.h"
#import "MSSignature.h"


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
@property(nonatomic) NSNumber* date;  /* epoch timestamp in milliseconds  */
@property(nonatomic) NSString* hash;  
@property(nonatomic) NSString* fileName;  
@property(nonatomic) NSNumber* readOnly;  
@property(nonatomic) NSString* recipientKey;  
@property(nonatomic) NSArray* transfers;  
@property(nonatomic) MSSignature* signature;  
- (id) type: (NSString*) type     
    processType: (NSString*) processType     
    processId: (NSString*) processId     
    code: (NSString*) code     
    status: (NSString*) status     
    helpText: (NSString*) helpText     
    helpDetail: (NSString*) helpDetail     
    optional: (NSNumber*) optional     
    metadataList: (NSArray*) metadataList     
    date: (NSNumber*) date     
    hash: (NSString*) hash     
    fileName: (NSString*) fileName     
    readOnly: (NSNumber*) readOnly     
    recipientKey: (NSString*) recipientKey     
    transfers: (NSArray*) transfers     
    signature: (MSSignature*) signature;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

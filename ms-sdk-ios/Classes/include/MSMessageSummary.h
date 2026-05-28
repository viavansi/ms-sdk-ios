#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSPolicy.h"
#import "MSTransfer.h"


@interface MSMessageSummary : SWGObject

@property(nonatomic) NSString* code;  
@property(nonatomic) NSString* status;  
@property(nonatomic) NSString* templateCode;  
@property(nonatomic) NSArray* policies;  
@property(nonatomic) NSArray* transfers;  
@property(nonatomic) NSString* languageId;  
@property(nonatomic) NSString* externalCode;  
@property(nonatomic) NSString* commentReject;  
- (id) code: (NSString*) code     
    status: (NSString*) status     
    templateCode: (NSString*) templateCode     
    policies: (NSArray*) policies     
    transfers: (NSArray*) transfers     
    languageId: (NSString*) languageId     
    externalCode: (NSString*) externalCode     
    commentReject: (NSString*) commentReject;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSVerifierDocumentDTO.h"
#import "MSAuditoryActions.h"


@interface MSAuditoryInfo : SWGObject

@property(nonatomic) MSAuditoryActions* actions;  
@property(nonatomic) MSVerifierDocumentDTO* info;  
@property(nonatomic) NSString* messageCode;  
- (id) actions: (MSAuditoryActions*) actions     
    info: (MSVerifierDocumentDTO*) info     
    messageCode: (NSString*) messageCode;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSVerifierDocumentDTO.h"
#import "MSAuditoryActions.h"


@interface MSAuditoryInfo : SWGObject

@property(nonatomic) MSAuditoryActions* actions;  
@property(nonatomic) MSVerifierDocumentDTO* info;  
- (id) actions: (MSAuditoryActions*) actions     
    info: (MSVerifierDocumentDTO*) info;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

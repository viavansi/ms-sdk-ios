#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "MSAuditTrailTableBlock.h"
#import "MSAuditTrailConfig.h"
#import "MSAuditTrailSummaryBlock.h"
#import "MSAuditTrailHeader.h"
#import "MSAuditTrailHighlightedBlock.h"
#import "MSAuditTrailFooter.h"


@interface MSAuditTrail : SWGObject

@property(nonatomic) MSAuditTrailHeader* header;  
@property(nonatomic) MSAuditTrailSummaryBlock* summaryBlock;  
@property(nonatomic) MSAuditTrailHighlightedBlock* highlightedBlock;  
@property(nonatomic) NSArray* tableBlocks;  
@property(nonatomic) MSAuditTrailFooter* footer;  
@property(nonatomic) MSAuditTrailConfig* config;  
- (id) header: (MSAuditTrailHeader*) header     
    summaryBlock: (MSAuditTrailSummaryBlock*) summaryBlock     
    highlightedBlock: (MSAuditTrailHighlightedBlock*) highlightedBlock     
    tableBlocks: (NSArray*) tableBlocks     
    footer: (MSAuditTrailFooter*) footer     
    config: (MSAuditTrailConfig*) config;
    

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;

@end

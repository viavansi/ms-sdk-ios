#import "SWGDate.h"
#import "MSAuditTrail.h"

@implementation MSAuditTrail

@synthesize header = _header;
@synthesize summaryBlock = _summaryBlock;
@synthesize highlightedBlock = _highlightedBlock;
@synthesize tableBlocks = _tableBlocks;
@synthesize footer = _footer;
@synthesize config = _config;

-(id)header: (MSAuditTrailHeader*) header
    summaryBlock: (MSAuditTrailSummaryBlock*) summaryBlock
    highlightedBlock: (MSAuditTrailHighlightedBlock*) highlightedBlock
    tableBlocks: (NSArray*) tableBlocks
    footer: (MSAuditTrailFooter*) footer
    config: (MSAuditTrailConfig*) config
    
{
    _header = header;
    _summaryBlock = summaryBlock;
    _highlightedBlock = highlightedBlock;
    _tableBlocks = tableBlocks;
    _footer = footer;
    _config = config;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id header_dict = dict[@"header"];
        
        if(header_dict != nil)
            _header = [[MSAuditTrailHeader  alloc]initWithValues:header_dict];
        
        
        
        
        id summaryBlock_dict = dict[@"summaryBlock"];
        
        if(summaryBlock_dict != nil)
            _summaryBlock = [[MSAuditTrailSummaryBlock  alloc]initWithValues:summaryBlock_dict];
        
        
        
        
        id highlightedBlock_dict = dict[@"highlightedBlock"];
        
        if(highlightedBlock_dict != nil)
            _highlightedBlock = [[MSAuditTrailHighlightedBlock  alloc]initWithValues:highlightedBlock_dict];
        
        
        
        
        id tableBlocks_dict = dict[@"tableBlocks"];
        
        if([tableBlocks_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)tableBlocks_dict count]];
            if([(NSArray*)tableBlocks_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)tableBlocks_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[tableBlocks_dict objectAtIndex:i]];
                    MSAuditTrailTableBlock* d = [[MSAuditTrailTableBlock alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _tableBlocks = [[NSArray alloc] initWithArray:objs];
            }
            else
                _tableBlocks = [[NSArray alloc] init];
        }
        else {
            _tableBlocks = [[NSArray alloc] init];
        }
        
        
        
        
        id footer_dict = dict[@"footer"];
        
        if(footer_dict != nil)
            _footer = [[MSAuditTrailFooter  alloc]initWithValues:footer_dict];
        
        
        
        
        id config_dict = dict[@"config"];
        
        if(config_dict != nil)
            _config = [[MSAuditTrailConfig  alloc]initWithValues:config_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_header != nil){
        if([_header isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_header count] ; i++ ) {
				MSAuditTrailHeader *header = [[MSAuditTrailHeader alloc]init];
				header = [(NSArray*)_header objectAtIndex:i];
                [array addObject:[(SWGObject*)header asDictionary]];
            }
            dict[@"header"] = array;
        }
        else if(_header && [_header isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_header toString];
            if(dateString){
                dict[@"header"] = dateString;
            }
        }
        else {
        
            if(_header != nil) dict[@"header"] = [(SWGObject*)_header asDictionary];
        
        }
    }
    
    
    
    if(_summaryBlock != nil){
        if([_summaryBlock isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_summaryBlock count] ; i++ ) {
				MSAuditTrailSummaryBlock *summaryBlock = [[MSAuditTrailSummaryBlock alloc]init];
				summaryBlock = [(NSArray*)_summaryBlock objectAtIndex:i];
                [array addObject:[(SWGObject*)summaryBlock asDictionary]];
            }
            dict[@"summaryBlock"] = array;
        }
        else if(_summaryBlock && [_summaryBlock isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_summaryBlock toString];
            if(dateString){
                dict[@"summaryBlock"] = dateString;
            }
        }
        else {
        
            if(_summaryBlock != nil) dict[@"summaryBlock"] = [(SWGObject*)_summaryBlock asDictionary];
        
        }
    }
    
    
    
    if(_highlightedBlock != nil){
        if([_highlightedBlock isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_highlightedBlock count] ; i++ ) {
				MSAuditTrailHighlightedBlock *highlightedBlock = [[MSAuditTrailHighlightedBlock alloc]init];
				highlightedBlock = [(NSArray*)_highlightedBlock objectAtIndex:i];
                [array addObject:[(SWGObject*)highlightedBlock asDictionary]];
            }
            dict[@"highlightedBlock"] = array;
        }
        else if(_highlightedBlock && [_highlightedBlock isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_highlightedBlock toString];
            if(dateString){
                dict[@"highlightedBlock"] = dateString;
            }
        }
        else {
        
            if(_highlightedBlock != nil) dict[@"highlightedBlock"] = [(SWGObject*)_highlightedBlock asDictionary];
        
        }
    }
    
    
    
    if(_tableBlocks != nil){
        if([_tableBlocks isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_tableBlocks count] ; i++ ) {
				MSAuditTrailTableBlock *tableBlocks = [[MSAuditTrailTableBlock alloc]init];
				tableBlocks = [(NSArray*)_tableBlocks objectAtIndex:i];
                [array addObject:[(SWGObject*)tableBlocks asDictionary]];
            }
            dict[@"tableBlocks"] = array;
        }
        else if(_tableBlocks && [_tableBlocks isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_tableBlocks toString];
            if(dateString){
                dict[@"tableBlocks"] = dateString;
            }
        }
        else {
        
            if(_tableBlocks != nil) dict[@"tableBlocks"] = [(SWGObject*)_tableBlocks asDictionary];
        
        }
    }
    
    
    
    if(_footer != nil){
        if([_footer isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_footer count] ; i++ ) {
				MSAuditTrailFooter *footer = [[MSAuditTrailFooter alloc]init];
				footer = [(NSArray*)_footer objectAtIndex:i];
                [array addObject:[(SWGObject*)footer asDictionary]];
            }
            dict[@"footer"] = array;
        }
        else if(_footer && [_footer isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_footer toString];
            if(dateString){
                dict[@"footer"] = dateString;
            }
        }
        else {
        
            if(_footer != nil) dict[@"footer"] = [(SWGObject*)_footer asDictionary];
        
        }
    }
    
    
    
    if(_config != nil){
        if([_config isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_config count] ; i++ ) {
				MSAuditTrailConfig *config = [[MSAuditTrailConfig alloc]init];
				config = [(NSArray*)_config objectAtIndex:i];
                [array addObject:[(SWGObject*)config asDictionary]];
            }
            dict[@"config"] = array;
        }
        else if(_config && [_config isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_config toString];
            if(dateString){
                dict[@"config"] = dateString;
            }
        }
        else {
        
            if(_config != nil) dict[@"config"] = [(SWGObject*)_config asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

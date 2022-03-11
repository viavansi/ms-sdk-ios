#import "SWGDate.h"
#import "MSAttachment.h"

@implementation MSAttachment

@synthesize type = _type;
@synthesize processType = _processType;
@synthesize processId = _processId;
@synthesize code = _code;
@synthesize status = _status;
@synthesize helpText = _helpText;
@synthesize helpDetail = _helpDetail;
@synthesize optional = _optional;
@synthesize metadataList = _metadataList;
@synthesize date = _date;
@synthesize hash = _hash;
@synthesize fileName = _fileName;
@synthesize readOnly = _readOnly;
@synthesize recipientKey = _recipientKey;
@synthesize transfers = _transfers;

-(id)type: (NSString*) type
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
    
{
    _type = type;
    _processType = processType;
    _processId = processId;
    _code = code;
    _status = status;
    _helpText = helpText;
    _helpDetail = helpDetail;
    _optional = optional;
    _metadataList = metadataList;
    _date = date;
    _hash = hash;
    _fileName = fileName;
    _readOnly = readOnly;
    _recipientKey = recipientKey;
    _transfers = transfers;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _processType = dict[@"processType"];
        
        _processId = dict[@"processId"];
        
        _code = dict[@"code"];
        
        _status = dict[@"status"];
        
        _helpText = dict[@"helpText"];
        
        _helpDetail = dict[@"helpDetail"];
        
        _optional = dict[@"optional"];
        
        
        
        id metadataList_dict = dict[@"metadataList"];
        
        if([metadataList_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)metadataList_dict count]];
            if([(NSArray*)metadataList_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)metadataList_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[metadataList_dict objectAtIndex:i]];
                    MSParam* d = [[MSParam alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _metadataList = [[NSArray alloc] initWithArray:objs];
            }
            else
                _metadataList = [[NSArray alloc] init];
        }
        else {
            _metadataList = [[NSArray alloc] init];
        }
        
        
        _date = dict[@"date"];
        
        _hash = dict[@"hash"];
        
        _fileName = dict[@"fileName"];
        
        _readOnly = dict[@"readOnly"];
        
        _recipientKey = dict[@"recipientKey"];
        
        
        
        id transfers_dict = dict[@"transfers"];
        
        if([transfers_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)transfers_dict count]];
            if([(NSArray*)transfers_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)transfers_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[transfers_dict objectAtIndex:i]];
                    MSTransfer* d = [[MSTransfer alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _transfers = [[NSArray alloc] initWithArray:objs];
            }
            else
                _transfers = [[NSArray alloc] init];
        }
        else {
            _transfers = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_processType != nil) dict[@"processType"] = _processType ;
        
    
    
            if(_processId != nil) dict[@"processId"] = _processId ;
        
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_helpText != nil) dict[@"helpText"] = _helpText ;
        
    
    
            if(_helpDetail != nil) dict[@"helpDetail"] = _helpDetail ;
        
    
    
            if(_optional != nil) dict[@"optional"] = _optional ;
        
    
    
    if(_metadataList != nil){
        if([_metadataList isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_metadataList count] ; i++ ) {
				MSParam *metadataList = [[MSParam alloc]init];
				metadataList = [(NSArray*)_metadataList objectAtIndex:i];
                [array addObject:[(SWGObject*)metadataList asDictionary]];
            }
            dict[@"metadataList"] = array;
        }
        else if(_metadataList && [_metadataList isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_metadataList toString];
            if(dateString){
                dict[@"metadataList"] = dateString;
            }
        }
        else {
        
            if(_metadataList != nil) dict[@"metadataList"] = [(SWGObject*)_metadataList asDictionary];
        
        }
    }
    
    
    
            if(_date != nil) dict[@"date"] = _date ;
        
    
    
            if(_hash != nil) dict[@"hash"] = _hash ;
        
    
    
            if(_fileName != nil) dict[@"fileName"] = _fileName ;
        
    
    
            if(_readOnly != nil) dict[@"readOnly"] = _readOnly ;
        
    
    
            if(_recipientKey != nil) dict[@"recipientKey"] = _recipientKey ;
        
    
    
    if(_transfers != nil){
        if([_transfers isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_transfers count] ; i++ ) {
				MSTransfer *transfers = [[MSTransfer alloc]init];
				transfers = [(NSArray*)_transfers objectAtIndex:i];
                [array addObject:[(SWGObject*)transfers asDictionary]];
            }
            dict[@"transfers"] = array;
        }
        else if(_transfers && [_transfers isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_transfers toString];
            if(dateString){
                dict[@"transfers"] = dateString;
            }
        }
        else {
        
            if(_transfers != nil) dict[@"transfers"] = [(SWGObject*)_transfers asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

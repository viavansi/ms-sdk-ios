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

-(id)type: (NSString*) type
    processType: (NSString*) processType
    processId: (NSString*) processId
    code: (NSString*) code
    status: (NSString*) status
    helpText: (NSString*) helpText
    helpDetail: (NSString*) helpDetail
    optional: (NSNumber*) optional
    metadataList: (NSArray*) metadataList
    
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
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
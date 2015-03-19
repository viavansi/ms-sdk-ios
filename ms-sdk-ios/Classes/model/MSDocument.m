#import "SWGDate.h"
#import "MSDocument.h"

@implementation MSDocument

-(id)templateCode: (NSString*) templateCode
    templateReference: (NSString*) templateReference
    draftedCode: (NSString*) draftedCode
    draftedReference: (NSString*) draftedReference
    signedCode: (NSString*) signedCode
    signedReference: (NSString*) signedReference
    templateType: (NSString*) templateType
    items: (NSArray*) items
    
{
    _templateCode = templateCode;
    _templateReference = templateReference;
    _draftedCode = draftedCode;
    _draftedReference = draftedReference;
    _signedCode = signedCode;
    _signedReference = signedReference;
    _templateType = templateType;
    _items = items;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _templateCode = dict[@"templateCode"];
        
        _templateReference = dict[@"templateReference"];
        
        _draftedCode = dict[@"draftedCode"];
        
        _draftedReference = dict[@"draftedReference"];
        
        _signedCode = dict[@"signedCode"];
        
        _signedReference = dict[@"signedReference"];
        
        _templateType = dict[@"templateType"];
        
        
        
        id items_dict = dict[@"items"];
        
        if([items_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)items_dict count]];
            if([(NSArray*)items_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)items_dict) {
                    MSItem* d = [[MSItem alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _items = [[NSArray alloc] initWithArray:objs];
            }
            else
                _items = [[NSArray alloc] init];
        }
        else {
            _items = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_templateCode != nil) dict[@"templateCode"] = _templateCode ;
        
    
    
            if(_templateReference != nil) dict[@"templateReference"] = _templateReference ;
        
    
    
            if(_draftedCode != nil) dict[@"draftedCode"] = _draftedCode ;
        
    
    
            if(_draftedReference != nil) dict[@"draftedReference"] = _draftedReference ;
        
    
    
            if(_signedCode != nil) dict[@"signedCode"] = _signedCode ;
        
    
    
            if(_signedReference != nil) dict[@"signedReference"] = _signedReference ;
        
    
    
            if(_templateType != nil) dict[@"templateType"] = _templateType ;
        
    
    
    if(_items != nil){
        if([_items isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSItem *items in (NSArray*)_items) {
                [array addObject:[(SWGObject*)items asDictionary]];
            }
            dict[@"items"] = array;
        }
        else if(_items && [_items isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_items toString];
            if(dateString){
                dict[@"items"] = dateString;
            }
        }
        else {
        
            if(_items != nil) dict[@"items"] = [(SWGObject*)_items asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

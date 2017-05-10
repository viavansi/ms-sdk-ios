#import "SWGDate.h"
#import "MSDocument.h"

@implementation MSDocument

-(id)templateCode: (NSString*) templateCode
    templateReference: (NSString*) templateReference
    templateVersion: (NSNumber*) templateVersion
    draftedCode: (NSString*) draftedCode
    draftedReference: (NSString*) draftedReference
    signedCode: (NSString*) signedCode
    signedID: (NSString*) signedID
    signedReference: (NSString*) signedReference
    templateType: (NSString*) templateType
    formRequired: (NSNumber*) formRequired
    formDisabled: (NSNumber*) formDisabled
    items: (NSArray*) items
    pdfaCompliant: (NSNumber*) pdfaCompliant
    font: (MSFont*) font
    
{
    _templateCode = templateCode;
    _templateReference = templateReference;
    _templateVersion = templateVersion;
    _draftedCode = draftedCode;
    _draftedReference = draftedReference;
    _signedCode = signedCode;
    _signedID = signedID;
    _signedReference = signedReference;
    _templateType = templateType;
    _formRequired = formRequired;
    _formDisabled = formDisabled;
    _items = items;
    _pdfaCompliant = pdfaCompliant;
    _font = font;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _templateCode = dict[@"templateCode"];
        
        _templateReference = dict[@"templateReference"];
        
        _templateVersion = dict[@"templateVersion"];
        
        _draftedCode = dict[@"draftedCode"];
        
        _draftedReference = dict[@"draftedReference"];
        
        _signedCode = dict[@"signedCode"];
        
        _signedID = dict[@"signedID"];
        
        _signedReference = dict[@"signedReference"];
        
        _templateType = dict[@"templateType"];
        
        _formRequired = dict[@"formRequired"];
        
        _formDisabled = dict[@"formDisabled"];
        
        
        
        id items_dict = dict[@"items"];
        
        if([items_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)items_dict count]];
            if([(NSArray*)items_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)items_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[items_dict objectAtIndex:i]];
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
        
        
        _pdfaCompliant = dict[@"pdfaCompliant"];
        
        
        
        id font_dict = dict[@"font"];
        
        if(font_dict != nil)
            _font = [[MSFont  alloc]initWithValues:font_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_templateCode != nil) dict[@"templateCode"] = _templateCode ;
        
    
    
            if(_templateReference != nil) dict[@"templateReference"] = _templateReference ;
        
    
    
            if(_templateVersion != nil) dict[@"templateVersion"] = _templateVersion ;
        
    
    
            if(_draftedCode != nil) dict[@"draftedCode"] = _draftedCode ;
        
    
    
            if(_draftedReference != nil) dict[@"draftedReference"] = _draftedReference ;
        
    
    
            if(_signedCode != nil) dict[@"signedCode"] = _signedCode ;
        
    
    
            if(_signedID != nil) dict[@"signedID"] = _signedID ;
        
    
    
            if(_signedReference != nil) dict[@"signedReference"] = _signedReference ;
        
    
    
            if(_templateType != nil) dict[@"templateType"] = _templateType ;
        
    
    
            if(_formRequired != nil) dict[@"formRequired"] = _formRequired ;
        
    
    
            if(_formDisabled != nil) dict[@"formDisabled"] = _formDisabled ;
        
    
    
    if(_items != nil){
        if([_items isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_items count] ; i++ ) {
				MSItem *items = [[MSItem alloc]init];
				items = [(NSArray*)_items objectAtIndex:i];            
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
    
    
    
            if(_pdfaCompliant != nil) dict[@"pdfaCompliant"] = _pdfaCompliant ;
        
    
    
    if(_font != nil){
        if([_font isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_font count] ; i++ ) {
				MSFont *font = [[MSFont alloc]init];
				font = [(NSArray*)_font objectAtIndex:i];            
                [array addObject:[(SWGObject*)font asDictionary]];
            }
            dict[@"font"] = array;
        }
        else if(_font && [_font isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_font toString];
            if(dateString){
                dict[@"font"] = dateString;
            }
        }
        else {
        
            if(_font != nil) dict[@"font"] = [(SWGObject*)_font asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSMessageData.h"

@implementation MSMessageData

-(id)messageCode: (NSString*) messageCode
    items: (NSArray*) items
    biometricSignaturesData: (NSArray*) biometricSignaturesData
    fingerPrintsData: (NSArray*) fingerPrintsData
    imagesData: (NSArray*) imagesData
    
{
    _messageCode = messageCode;
    _items = items;
    _biometricSignaturesData = biometricSignaturesData;
    _fingerPrintsData = fingerPrintsData;
    _imagesData = imagesData;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        
        
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
        
        
        
        
        id biometricSignaturesData_dict = dict[@"biometricSignaturesData"];
        
        if([biometricSignaturesData_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)biometricSignaturesData_dict count]];
            if([(NSArray*)biometricSignaturesData_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)biometricSignaturesData_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[biometricSignaturesData_dict objectAtIndex:i]];
                    MSEvidenceSignature* d = [[MSEvidenceSignature alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _biometricSignaturesData = [[NSArray alloc] initWithArray:objs];
            }
            else
                _biometricSignaturesData = [[NSArray alloc] init];
        }
        else {
            _biometricSignaturesData = [[NSArray alloc] init];
        }
        
        
        
        
        id fingerPrintsData_dict = dict[@"fingerPrintsData"];
        
        if([fingerPrintsData_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)fingerPrintsData_dict count]];
            if([(NSArray*)fingerPrintsData_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)fingerPrintsData_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[fingerPrintsData_dict objectAtIndex:i]];
                    MSEvidenceFingerPrint* d = [[MSEvidenceFingerPrint alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _fingerPrintsData = [[NSArray alloc] initWithArray:objs];
            }
            else
                _fingerPrintsData = [[NSArray alloc] init];
        }
        else {
            _fingerPrintsData = [[NSArray alloc] init];
        }
        
        
        
        
        id imagesData_dict = dict[@"imagesData"];
        
        if([imagesData_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)imagesData_dict count]];
            if([(NSArray*)imagesData_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)imagesData_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[imagesData_dict objectAtIndex:i]];
                    MSEvidenceImage* d = [[MSEvidenceImage alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _imagesData = [[NSArray alloc] initWithArray:objs];
            }
            else
                _imagesData = [[NSArray alloc] init];
        }
        else {
            _imagesData = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
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
    
    
    
    if(_biometricSignaturesData != nil){
        if([_biometricSignaturesData isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_biometricSignaturesData count] ; i++ ) {
				MSEvidenceSignature *biometricSignaturesData = [[MSEvidenceSignature alloc]init];
				biometricSignaturesData = [(NSArray*)_biometricSignaturesData objectAtIndex:i];            
                [array addObject:[(SWGObject*)biometricSignaturesData asDictionary]];
            }
            dict[@"biometricSignaturesData"] = array;
        }
        else if(_biometricSignaturesData && [_biometricSignaturesData isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_biometricSignaturesData toString];
            if(dateString){
                dict[@"biometricSignaturesData"] = dateString;
            }
        }
        else {
        
            if(_biometricSignaturesData != nil) dict[@"biometricSignaturesData"] = [(SWGObject*)_biometricSignaturesData asDictionary];
        
        }
    }
    
    
    
    if(_fingerPrintsData != nil){
        if([_fingerPrintsData isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_fingerPrintsData count] ; i++ ) {
				MSEvidenceFingerPrint *fingerPrintsData = [[MSEvidenceFingerPrint alloc]init];
				fingerPrintsData = [(NSArray*)_fingerPrintsData objectAtIndex:i];            
                [array addObject:[(SWGObject*)fingerPrintsData asDictionary]];
            }
            dict[@"fingerPrintsData"] = array;
        }
        else if(_fingerPrintsData && [_fingerPrintsData isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_fingerPrintsData toString];
            if(dateString){
                dict[@"fingerPrintsData"] = dateString;
            }
        }
        else {
        
            if(_fingerPrintsData != nil) dict[@"fingerPrintsData"] = [(SWGObject*)_fingerPrintsData asDictionary];
        
        }
    }
    
    
    
    if(_imagesData != nil){
        if([_imagesData isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_imagesData count] ; i++ ) {
				MSEvidenceImage *imagesData = [[MSEvidenceImage alloc]init];
				imagesData = [(NSArray*)_imagesData objectAtIndex:i];            
                [array addObject:[(SWGObject*)imagesData asDictionary]];
            }
            dict[@"imagesData"] = array;
        }
        else if(_imagesData && [_imagesData isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_imagesData toString];
            if(dateString){
                dict[@"imagesData"] = dateString;
            }
        }
        else {
        
            if(_imagesData != nil) dict[@"imagesData"] = [(SWGObject*)_imagesData asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

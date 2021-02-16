#import "SWGDate.h"
#import "MSVerifierTimeStampDTO.h"

@implementation MSVerifierTimeStampDTO

@synthesize type = _type;
@synthesize indication = _indication;
@synthesize subIndication = _subIndication;
@synthesize digestAlgo = _digestAlgo;
@synthesize productionTime = _productionTime;
@synthesize certificate = _certificate;

-(id)type: (NSString*) type
    indication: (NSString*) indication
    subIndication: (NSString*) subIndication
    digestAlgo: (NSString*) digestAlgo
    productionTime: (SWGDate*) productionTime
    certificate: (MSVerifierCertificateDTO*) certificate
    
{
    _type = type;
    _indication = indication;
    _subIndication = subIndication;
    _digestAlgo = digestAlgo;
    _productionTime = productionTime;
    _certificate = certificate;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _indication = dict[@"indication"];
        
        _subIndication = dict[@"subIndication"];
        
        _digestAlgo = dict[@"digestAlgo"];
        
        
        
        id productionTime_dict = dict[@"productionTime"];
        
        if(productionTime_dict != nil)
            _productionTime = [[SWGDate  alloc]initWithValues:productionTime_dict];
        
        
        
        
        id certificate_dict = dict[@"certificate"];
        
        if(certificate_dict != nil)
            _certificate = [[MSVerifierCertificateDTO  alloc]initWithValues:certificate_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_indication != nil) dict[@"indication"] = _indication ;
        
    
    
            if(_subIndication != nil) dict[@"subIndication"] = _subIndication ;
        
    
    
            if(_digestAlgo != nil) dict[@"digestAlgo"] = _digestAlgo ;
        
    
    
    if(_productionTime != nil){
        if([_productionTime isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_productionTime count] ; i++ ) {
				SWGDate *productionTime = [[SWGDate alloc]init];
				productionTime = [(NSArray*)_productionTime objectAtIndex:i];
                [array addObject:[(SWGObject*)productionTime asDictionary]];
            }
            dict[@"productionTime"] = array;
        }
        else if(_productionTime && [_productionTime isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_productionTime toString];
            if(dateString){
                dict[@"productionTime"] = dateString;
            }
        }
        else {
        
            if(_productionTime != nil) dict[@"productionTime"] = [(SWGObject*)_productionTime asDictionary];
        
        }
    }
    
    
    
    if(_certificate != nil){
        if([_certificate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_certificate count] ; i++ ) {
				MSVerifierCertificateDTO *certificate = [[MSVerifierCertificateDTO alloc]init];
				certificate = [(NSArray*)_certificate objectAtIndex:i];
                [array addObject:[(SWGObject*)certificate asDictionary]];
            }
            dict[@"certificate"] = array;
        }
        else if(_certificate && [_certificate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_certificate toString];
            if(dateString){
                dict[@"certificate"] = dateString;
            }
        }
        else {
        
            if(_certificate != nil) dict[@"certificate"] = [(SWGObject*)_certificate asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSVerifierTimeStampDTO.h"

@implementation MSVerifierTimeStampDTO

@synthesize type = _type;
@synthesize indication = _indication;
@synthesize subIndication = _subIndication;
@synthesize digestAlgo = _digestAlgo;
@synthesize productionTime = _productionTime;
@synthesize signedBy = _signedBy;
@synthesize certificate = _certificate;
@synthesize validationStatus = _validationStatus;
@synthesize issuerBy = _issuerBy;

-(id)type: (NSString*) type
    indication: (NSString*) indication
    subIndication: (NSString*) subIndication
    digestAlgo: (NSString*) digestAlgo
    productionTime: (SWGDate*) productionTime
    signedBy: (NSString*) signedBy
    certificate: (MSVerifierCertificateDTO*) certificate
    validationStatus: (NSString*) validationStatus
    issuerBy: (NSString*) issuerBy
    
{
    _type = type;
    _indication = indication;
    _subIndication = subIndication;
    _digestAlgo = digestAlgo;
    _productionTime = productionTime;
    _signedBy = signedBy;
    _certificate = certificate;
    _validationStatus = validationStatus;
    _issuerBy = issuerBy;
    

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
        
        
        _signedBy = dict[@"signedBy"];
        
        
        
        id certificate_dict = dict[@"certificate"];
        
        if(certificate_dict != nil)
            _certificate = [[MSVerifierCertificateDTO  alloc]initWithValues:certificate_dict];
        
        
        _validationStatus = dict[@"validationStatus"];
        
        _issuerBy = dict[@"issuerBy"];
        
        
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
    
    
    
            if(_signedBy != nil) dict[@"signedBy"] = _signedBy ;
        
    
    
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
    
    
    
            if(_validationStatus != nil) dict[@"validationStatus"] = _validationStatus ;
        
    
    
            if(_issuerBy != nil) dict[@"issuerBy"] = _issuerBy ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

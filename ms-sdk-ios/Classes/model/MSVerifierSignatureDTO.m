#import "SWGDate.h"
#import "MSVerifierSignatureDTO.h"

@implementation MSVerifierSignatureDTO

@synthesize format = _format;
@synthesize encryptionAlgorithm = _encryptionAlgorithm;
@synthesize digestAlgorithm = _digestAlgorithm;
@synthesize level = _level;
@synthesize signingTime = _signingTime;
@synthesize validationStatus = _validationStatus;
@synthesize indication = _indication;
@synthesize subIndication = _subIndication;
@synthesize policyId = _policyId;
@synthesize errorMessage = _errorMessage;
@synthesize signedBy = _signedBy;
@synthesize code = _code;
@synthesize certificate = _certificate;
@synthesize timeStamps = _timeStamps;
@synthesize unsignedChanges = _unsignedChanges;

-(id)format: (NSString*) format
    encryptionAlgorithm: (NSString*) encryptionAlgorithm
    digestAlgorithm: (NSString*) digestAlgorithm
    level: (NSString*) level
    signingTime: (SWGDate*) signingTime
    validationStatus: (NSString*) validationStatus
    indication: (NSString*) indication
    subIndication: (NSString*) subIndication
    policyId: (NSString*) policyId
    errorMessage: (NSString*) errorMessage
    signedBy: (NSString*) signedBy
    code: (NSString*) code
    certificate: (MSVerifierCertificateDTO*) certificate
    timeStamps: (NSArray*) timeStamps
    unsignedChanges: (NSNumber*) unsignedChanges
    
{
    _format = format;
    _encryptionAlgorithm = encryptionAlgorithm;
    _digestAlgorithm = digestAlgorithm;
    _level = level;
    _signingTime = signingTime;
    _validationStatus = validationStatus;
    _indication = indication;
    _subIndication = subIndication;
    _policyId = policyId;
    _errorMessage = errorMessage;
    _signedBy = signedBy;
    _code = code;
    _certificate = certificate;
    _timeStamps = timeStamps;
    _unsignedChanges = unsignedChanges;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _format = dict[@"format"];
        
        _encryptionAlgorithm = dict[@"encryptionAlgorithm"];
        
        _digestAlgorithm = dict[@"digestAlgorithm"];
        
        _level = dict[@"level"];
        
        
        
        id signingTime_dict = dict[@"signingTime"];
        
        if(signingTime_dict != nil)
            _signingTime = [[SWGDate  alloc]initWithValues:signingTime_dict];
        
        
        _validationStatus = dict[@"validationStatus"];
        
        _indication = dict[@"indication"];
        
        _subIndication = dict[@"subIndication"];
        
        _policyId = dict[@"policyId"];
        
        _errorMessage = dict[@"errorMessage"];
        
        _signedBy = dict[@"signedBy"];
        
        _code = dict[@"code"];
        
        
        
        id certificate_dict = dict[@"certificate"];
        
        if(certificate_dict != nil)
            _certificate = [[MSVerifierCertificateDTO  alloc]initWithValues:certificate_dict];
        
        
        
        
        id timeStamps_dict = dict[@"timeStamps"];
        
        if([timeStamps_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)timeStamps_dict count]];
            if([(NSArray*)timeStamps_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)timeStamps_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[timeStamps_dict objectAtIndex:i]];
                    MSVerifierTimeStampDTO* d = [[MSVerifierTimeStampDTO alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _timeStamps = [[NSArray alloc] initWithArray:objs];
            }
            else
                _timeStamps = [[NSArray alloc] init];
        }
        else {
            _timeStamps = [[NSArray alloc] init];
        }
        
        
        _unsignedChanges = dict[@"unsignedChanges"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_format != nil) dict[@"format"] = _format ;
        
    
    
            if(_encryptionAlgorithm != nil) dict[@"encryptionAlgorithm"] = _encryptionAlgorithm ;
        
    
    
            if(_digestAlgorithm != nil) dict[@"digestAlgorithm"] = _digestAlgorithm ;
        
    
    
            if(_level != nil) dict[@"level"] = _level ;
        
    
    
    if(_signingTime != nil){
        if([_signingTime isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_signingTime count] ; i++ ) {
				SWGDate *signingTime = [[SWGDate alloc]init];
				signingTime = [(NSArray*)_signingTime objectAtIndex:i];
                [array addObject:[(SWGObject*)signingTime asDictionary]];
            }
            dict[@"signingTime"] = array;
        }
        else if(_signingTime && [_signingTime isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_signingTime toString];
            if(dateString){
                dict[@"signingTime"] = dateString;
            }
        }
        else {
        
            if(_signingTime != nil) dict[@"signingTime"] = [(SWGObject*)_signingTime asDictionary];
        
        }
    }
    
    
    
            if(_validationStatus != nil) dict[@"validationStatus"] = _validationStatus ;
        
    
    
            if(_indication != nil) dict[@"indication"] = _indication ;
        
    
    
            if(_subIndication != nil) dict[@"subIndication"] = _subIndication ;
        
    
    
            if(_policyId != nil) dict[@"policyId"] = _policyId ;
        
    
    
            if(_errorMessage != nil) dict[@"errorMessage"] = _errorMessage ;
        
    
    
            if(_signedBy != nil) dict[@"signedBy"] = _signedBy ;
        
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
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
    
    
    
    if(_timeStamps != nil){
        if([_timeStamps isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_timeStamps count] ; i++ ) {
				MSVerifierTimeStampDTO *timeStamps = [[MSVerifierTimeStampDTO alloc]init];
				timeStamps = [(NSArray*)_timeStamps objectAtIndex:i];
                [array addObject:[(SWGObject*)timeStamps asDictionary]];
            }
            dict[@"timeStamps"] = array;
        }
        else if(_timeStamps && [_timeStamps isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_timeStamps toString];
            if(dateString){
                dict[@"timeStamps"] = dateString;
            }
        }
        else {
        
            if(_timeStamps != nil) dict[@"timeStamps"] = [(SWGObject*)_timeStamps asDictionary];
        
        }
    }
    
    
    
            if(_unsignedChanges != nil) dict[@"unsignedChanges"] = _unsignedChanges ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

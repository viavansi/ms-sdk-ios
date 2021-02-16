#import "SWGDate.h"
#import "MSVerifierEvidenceDTO.h"

@implementation MSVerifierEvidenceDTO

@synthesize validationStatus = _validationStatus;
@synthesize evidenceInfo = _evidenceInfo;
@synthesize evidenceName = _evidenceName;
@synthesize signatureInfo = _signatureInfo;
@synthesize validationMessages = _validationMessages;
@synthesize validationErrors = _validationErrors;

-(id)validationStatus: (NSString*) validationStatus
    evidenceInfo: (MSXMLEvidenceDTO*) evidenceInfo
    evidenceName: (NSString*) evidenceName
    signatureInfo: (MSVerifierSignatureDTO*) signatureInfo
    validationMessages: (NSArray*) validationMessages
    validationErrors: (NSArray*) validationErrors
    
{
    _validationStatus = validationStatus;
    _evidenceInfo = evidenceInfo;
    _evidenceName = evidenceName;
    _signatureInfo = signatureInfo;
    _validationMessages = validationMessages;
    _validationErrors = validationErrors;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _validationStatus = dict[@"validationStatus"];
        
        
        
        id evidenceInfo_dict = dict[@"evidenceInfo"];
        
        if(evidenceInfo_dict != nil)
            _evidenceInfo = [[MSXMLEvidenceDTO  alloc]initWithValues:evidenceInfo_dict];
        
        
        _evidenceName = dict[@"evidenceName"];
        
        
        
        id signatureInfo_dict = dict[@"signatureInfo"];
        
        if(signatureInfo_dict != nil)
            _signatureInfo = [[MSVerifierSignatureDTO  alloc]initWithValues:signatureInfo_dict];
        
        
        _validationMessages = dict[@"validationMessages"];
        
        _validationErrors = dict[@"validationErrors"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_validationStatus != nil) dict[@"validationStatus"] = _validationStatus ;
        
    
    
    if(_evidenceInfo != nil){
        if([_evidenceInfo isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_evidenceInfo count] ; i++ ) {
				MSXMLEvidenceDTO *evidenceInfo = [[MSXMLEvidenceDTO alloc]init];
				evidenceInfo = [(NSArray*)_evidenceInfo objectAtIndex:i];
                [array addObject:[(SWGObject*)evidenceInfo asDictionary]];
            }
            dict[@"evidenceInfo"] = array;
        }
        else if(_evidenceInfo && [_evidenceInfo isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_evidenceInfo toString];
            if(dateString){
                dict[@"evidenceInfo"] = dateString;
            }
        }
        else {
        
            if(_evidenceInfo != nil) dict[@"evidenceInfo"] = [(SWGObject*)_evidenceInfo asDictionary];
        
        }
    }
    
    
    
            if(_evidenceName != nil) dict[@"evidenceName"] = _evidenceName ;
        
    
    
    if(_signatureInfo != nil){
        if([_signatureInfo isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_signatureInfo count] ; i++ ) {
				MSVerifierSignatureDTO *signatureInfo = [[MSVerifierSignatureDTO alloc]init];
				signatureInfo = [(NSArray*)_signatureInfo objectAtIndex:i];
                [array addObject:[(SWGObject*)signatureInfo asDictionary]];
            }
            dict[@"signatureInfo"] = array;
        }
        else if(_signatureInfo && [_signatureInfo isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_signatureInfo toString];
            if(dateString){
                dict[@"signatureInfo"] = dateString;
            }
        }
        else {
        
            if(_signatureInfo != nil) dict[@"signatureInfo"] = [(SWGObject*)_signatureInfo asDictionary];
        
        }
    }
    
    
    
            if(_validationMessages != nil) dict[@"validationMessages"] = _validationMessages ;
        
    
    
            if(_validationErrors != nil) dict[@"validationErrors"] = _validationErrors ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

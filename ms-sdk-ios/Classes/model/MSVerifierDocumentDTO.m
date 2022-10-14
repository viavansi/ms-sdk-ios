#import "SWGDate.h"
#import "MSVerifierDocumentDTO.h"

@implementation MSVerifierDocumentDTO

@synthesize signatureCode = _signatureCode;
@synthesize validationTime = _validationTime;
@synthesize signaturesCount = _signaturesCount;
@synthesize validSignaturesCount = _validSignaturesCount;
@synthesize evidencesCount = _evidencesCount;
@synthesize validEvidencesCount = _validEvidencesCount;
@synthesize signatures = _signatures;
@synthesize evidences = _evidences;
@synthesize pagesHashes = _pagesHashes;
@synthesize hashPdfContent = _hashPdfContent;
@synthesize hash = _hash;

-(id)signatureCode: (MSSignatureCodeDTO*) signatureCode
    validationTime: (SWGDate*) validationTime
    signaturesCount: (NSNumber*) signaturesCount
    validSignaturesCount: (NSNumber*) validSignaturesCount
    evidencesCount: (NSNumber*) evidencesCount
    validEvidencesCount: (NSNumber*) validEvidencesCount
    signatures: (NSArray*) signatures
    evidences: (NSArray*) evidences
    pagesHashes: (NSArray*) pagesHashes
    hashPdfContent: (NSString*) hashPdfContent
    hash: (NSString*) hash
    
{
    _signatureCode = signatureCode;
    _validationTime = validationTime;
    _signaturesCount = signaturesCount;
    _validSignaturesCount = validSignaturesCount;
    _evidencesCount = evidencesCount;
    _validEvidencesCount = validEvidencesCount;
    _signatures = signatures;
    _evidences = evidences;
    _pagesHashes = pagesHashes;
    _hashPdfContent = hashPdfContent;
    _hash = hash;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        
        
        id signatureCode_dict = dict[@"signatureCode"];
        
        if(signatureCode_dict != nil)
            _signatureCode = [[MSSignatureCodeDTO  alloc]initWithValues:signatureCode_dict];
        
        
        
        
        id validationTime_dict = dict[@"validationTime"];
        
        if(validationTime_dict != nil)
            _validationTime = [[SWGDate  alloc]initWithValues:validationTime_dict];
        
        
        _signaturesCount = dict[@"signaturesCount"];
        
        _validSignaturesCount = dict[@"validSignaturesCount"];
        
        _evidencesCount = dict[@"evidencesCount"];
        
        _validEvidencesCount = dict[@"validEvidencesCount"];
        
        
        
        id signatures_dict = dict[@"signatures"];
        
        if([signatures_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)signatures_dict count]];
            if([(NSArray*)signatures_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)signatures_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[signatures_dict objectAtIndex:i]];
                    MSVerifierSignatureDTO* d = [[MSVerifierSignatureDTO alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _signatures = [[NSArray alloc] initWithArray:objs];
            }
            else
                _signatures = [[NSArray alloc] init];
        }
        else {
            _signatures = [[NSArray alloc] init];
        }
        
        
        
        
        id evidences_dict = dict[@"evidences"];
        
        if([evidences_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)evidences_dict count]];
            if([(NSArray*)evidences_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)evidences_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[evidences_dict objectAtIndex:i]];
                    MSVerifierEvidenceDTO* d = [[MSVerifierEvidenceDTO alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _evidences = [[NSArray alloc] initWithArray:objs];
            }
            else
                _evidences = [[NSArray alloc] init];
        }
        else {
            _evidences = [[NSArray alloc] init];
        }
        
        
        _pagesHashes = dict[@"pagesHashes"];
        
        _hashPdfContent = dict[@"hashPdfContent"];
        
        _hash = dict[@"hash"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
    if(_signatureCode != nil){
        if([_signatureCode isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_signatureCode count] ; i++ ) {
				MSSignatureCodeDTO *signatureCode = [[MSSignatureCodeDTO alloc]init];
				signatureCode = [(NSArray*)_signatureCode objectAtIndex:i];
                [array addObject:[(SWGObject*)signatureCode asDictionary]];
            }
            dict[@"signatureCode"] = array;
        }
        else if(_signatureCode && [_signatureCode isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_signatureCode toString];
            if(dateString){
                dict[@"signatureCode"] = dateString;
            }
        }
        else {
        
            if(_signatureCode != nil) dict[@"signatureCode"] = [(SWGObject*)_signatureCode asDictionary];
        
        }
    }
    
    
    
    if(_validationTime != nil){
        if([_validationTime isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_validationTime count] ; i++ ) {
				SWGDate *validationTime = [[SWGDate alloc]init];
				validationTime = [(NSArray*)_validationTime objectAtIndex:i];
                [array addObject:[(SWGObject*)validationTime asDictionary]];
            }
            dict[@"validationTime"] = array;
        }
        else if(_validationTime && [_validationTime isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_validationTime toString];
            if(dateString){
                dict[@"validationTime"] = dateString;
            }
        }
        else {
        
            if(_validationTime != nil) dict[@"validationTime"] = [(SWGObject*)_validationTime asDictionary];
        
        }
    }
    
    
    
            if(_signaturesCount != nil) dict[@"signaturesCount"] = _signaturesCount ;
        
    
    
            if(_validSignaturesCount != nil) dict[@"validSignaturesCount"] = _validSignaturesCount ;
        
    
    
            if(_evidencesCount != nil) dict[@"evidencesCount"] = _evidencesCount ;
        
    
    
            if(_validEvidencesCount != nil) dict[@"validEvidencesCount"] = _validEvidencesCount ;
        
    
    
    if(_signatures != nil){
        if([_signatures isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_signatures count] ; i++ ) {
				MSVerifierSignatureDTO *signatures = [[MSVerifierSignatureDTO alloc]init];
				signatures = [(NSArray*)_signatures objectAtIndex:i];
                [array addObject:[(SWGObject*)signatures asDictionary]];
            }
            dict[@"signatures"] = array;
        }
        else if(_signatures && [_signatures isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_signatures toString];
            if(dateString){
                dict[@"signatures"] = dateString;
            }
        }
        else {
        
            if(_signatures != nil) dict[@"signatures"] = [(SWGObject*)_signatures asDictionary];
        
        }
    }
    
    
    
    if(_evidences != nil){
        if([_evidences isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_evidences count] ; i++ ) {
				MSVerifierEvidenceDTO *evidences = [[MSVerifierEvidenceDTO alloc]init];
				evidences = [(NSArray*)_evidences objectAtIndex:i];
                [array addObject:[(SWGObject*)evidences asDictionary]];
            }
            dict[@"evidences"] = array;
        }
        else if(_evidences && [_evidences isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_evidences toString];
            if(dateString){
                dict[@"evidences"] = dateString;
            }
        }
        else {
        
            if(_evidences != nil) dict[@"evidences"] = [(SWGObject*)_evidences asDictionary];
        
        }
    }
    
    
    
            if(_pagesHashes != nil) dict[@"pagesHashes"] = _pagesHashes ;
        
    
    
            if(_hashPdfContent != nil) dict[@"hashPdfContent"] = _hashPdfContent ;
        
    
    
            if(_hash != nil) dict[@"hash"] = _hash ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

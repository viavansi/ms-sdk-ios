#import "SWGDate.h"
#import "MSFortressCertificate.h"

@implementation MSFortressCertificate

@synthesize code = _code;
@synthesize name = _name;
@synthesize _description = __description;
@synthesize dateIssued = _dateIssued;
@synthesize dateExpired = _dateExpired;
@synthesize dateRevoked = _dateRevoked;
@synthesize serialNumber = _serialNumber;
@synthesize issuer = _issuer;
@synthesize subject = _subject;
@synthesize pem = _pem;
@synthesize issuerMap = _issuerMap;
@synthesize subjectMap = _subjectMap;
@synthesize delegated = _delegated;
@synthesize level = _level;

-(id)code: (NSString*) code
    name: (NSString*) name
    _description: (NSString*) _description
    dateIssued: (NSNumber*) dateIssued
    dateExpired: (NSNumber*) dateExpired
    dateRevoked: (NSNumber*) dateRevoked
    serialNumber: (NSString*) serialNumber
    issuer: (NSString*) issuer
    subject: (NSString*) subject
    pem: (NSString*) pem
    issuerMap: (NSDictionary*) issuerMap
    subjectMap: (NSDictionary*) subjectMap
    delegated: (NSNumber*) delegated
    level: (NSString*) level
    
{
    _code = code;
    _name = name;
    __description = _description;
    _dateIssued = dateIssued;
    _dateExpired = dateExpired;
    _dateRevoked = dateRevoked;
    _serialNumber = serialNumber;
    _issuer = issuer;
    _subject = subject;
    _pem = pem;
    _issuerMap = issuerMap;
    _subjectMap = subjectMap;
    _delegated = delegated;
    _level = level;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _name = dict[@"name"];
        
        __description = dict[@"description"];
        
        _dateIssued = dict[@"dateIssued"];
        
        _dateExpired = dict[@"dateExpired"];
        
        _dateRevoked = dict[@"dateRevoked"];
        
        _serialNumber = dict[@"serialNumber"];
        
        _issuer = dict[@"issuer"];
        
        _subject = dict[@"subject"];
        
        _pem = dict[@"pem"];
        
        _issuerMap = dict[@"issuerMap"];
        
        _subjectMap = dict[@"subjectMap"];
        
        _delegated = dict[@"delegated"];
        
        _level = dict[@"level"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_dateIssued != nil) dict[@"dateIssued"] = _dateIssued ;
        
    
    
            if(_dateExpired != nil) dict[@"dateExpired"] = _dateExpired ;
        
    
    
            if(_dateRevoked != nil) dict[@"dateRevoked"] = _dateRevoked ;
        
    
    
            if(_serialNumber != nil) dict[@"serialNumber"] = _serialNumber ;
        
    
    
            if(_issuer != nil) dict[@"issuer"] = _issuer ;
        
    
    
            if(_subject != nil) dict[@"subject"] = _subject ;
        
    
    
            if(_pem != nil) dict[@"pem"] = _pem ;
        
    
    
            if(_issuerMap != nil) dict[@"issuerMap"] = _issuerMap ;
        
    
    
            if(_subjectMap != nil) dict[@"subjectMap"] = _subjectMap ;
        
    
    
            if(_delegated != nil) dict[@"delegated"] = _delegated ;
        
    
    
            if(_level != nil) dict[@"level"] = _level ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

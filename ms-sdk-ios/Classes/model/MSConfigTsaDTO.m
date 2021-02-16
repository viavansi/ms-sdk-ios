#import "SWGDate.h"
#import "MSConfigTsaDTO.h"

@implementation MSConfigTsaDTO

@synthesize type = _type;
@synthesize url = _url;
@synthesize user = _user;
@synthesize password = _password;
@synthesize policyId = _policyId;
@synthesize localCert = _localCert;
@synthesize timestampAlgorithm = _timestampAlgorithm;
@synthesize extensionOid = _extensionOid;
@synthesize extensionValue = _extensionValue;

-(id)type: (NSString*) type
    url: (NSString*) url
    user: (NSString*) user
    password: (NSString*) password
    policyId: (NSString*) policyId
    localCert: (MSCertificateDTO*) localCert
    timestampAlgorithm: (NSString*) timestampAlgorithm
    extensionOid: (NSString*) extensionOid
    extensionValue: (NSString*) extensionValue
    
{
    _type = type;
    _url = url;
    _user = user;
    _password = password;
    _policyId = policyId;
    _localCert = localCert;
    _timestampAlgorithm = timestampAlgorithm;
    _extensionOid = extensionOid;
    _extensionValue = extensionValue;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _type = dict[@"type"];
        
        _url = dict[@"url"];
        
        _user = dict[@"user"];
        
        _password = dict[@"password"];
        
        _policyId = dict[@"policyId"];
        
        
        
        id localCert_dict = dict[@"localCert"];
        
        if(localCert_dict != nil)
            _localCert = [[MSCertificateDTO  alloc]initWithValues:localCert_dict];
        
        
        _timestampAlgorithm = dict[@"timestampAlgorithm"];
        
        _extensionOid = dict[@"extensionOid"];
        
        _extensionValue = dict[@"extensionValue"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_url != nil) dict[@"url"] = _url ;
        
    
    
            if(_user != nil) dict[@"user"] = _user ;
        
    
    
            if(_password != nil) dict[@"password"] = _password ;
        
    
    
            if(_policyId != nil) dict[@"policyId"] = _policyId ;
        
    
    
    if(_localCert != nil){
        if([_localCert isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_localCert count] ; i++ ) {
				MSCertificateDTO *localCert = [[MSCertificateDTO alloc]init];
				localCert = [(NSArray*)_localCert objectAtIndex:i];
                [array addObject:[(SWGObject*)localCert asDictionary]];
            }
            dict[@"localCert"] = array;
        }
        else if(_localCert && [_localCert isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_localCert toString];
            if(dateString){
                dict[@"localCert"] = dateString;
            }
        }
        else {
        
            if(_localCert != nil) dict[@"localCert"] = [(SWGObject*)_localCert asDictionary];
        
        }
    }
    
    
    
            if(_timestampAlgorithm != nil) dict[@"timestampAlgorithm"] = _timestampAlgorithm ;
        
    
    
            if(_extensionOid != nil) dict[@"extensionOid"] = _extensionOid ;
        
    
    
            if(_extensionValue != nil) dict[@"extensionValue"] = _extensionValue ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

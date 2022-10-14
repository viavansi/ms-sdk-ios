#import "SWGDate.h"
#import "MSDownload.h"

@implementation MSDownload

@synthesize link = _link;
@synthesize md5 = _md5;
@synthesize hash = _hash;
@synthesize fileName = _fileName;
@synthesize expires = _expires;
@synthesize base64 = _base64;
@synthesize code = _code;
@synthesize signedID = _signedID;

-(id)link: (NSString*) link
    md5: (NSString*) md5
    hash: (NSString*) hash
    fileName: (NSString*) fileName
    expires: (NSNumber*) expires
    base64: (NSString*) base64
    code: (NSString*) code
    signedID: (NSString*) signedID
    
{
    _link = link;
    _md5 = md5;
    _hash = hash;
    _fileName = fileName;
    _expires = expires;
    _base64 = base64;
    _code = code;
    _signedID = signedID;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _link = dict[@"link"];
        
        _md5 = dict[@"md5"];
        
        _hash = dict[@"hash"];
        
        _fileName = dict[@"fileName"];
        
        _expires = dict[@"expires"];
        
        _base64 = dict[@"base64"];
        
        _code = dict[@"code"];
        
        _signedID = dict[@"signedID"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_link != nil) dict[@"link"] = _link ;
        
    
    
            if(_md5 != nil) dict[@"md5"] = _md5 ;
        
    
    
            if(_hash != nil) dict[@"hash"] = _hash ;
        
    
    
            if(_fileName != nil) dict[@"fileName"] = _fileName ;
        
    
    
            if(_expires != nil) dict[@"expires"] = _expires ;
        
    
    
            if(_base64 != nil) dict[@"base64"] = _base64 ;
        
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_signedID != nil) dict[@"signedID"] = _signedID ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

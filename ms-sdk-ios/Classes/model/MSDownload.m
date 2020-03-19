#import "SWGDate.h"
#import "MSDownload.h"

@implementation MSDownload

@synthesize link = _link;
@synthesize md5 = _md5;
@synthesize fileName = _fileName;
@synthesize expires = _expires;
@synthesize base64 = _base64;
@synthesize code = _code;
@synthesize signedID = _signedID;

-(id)link: (NSString*) link
    md5: (NSString*) md5
    fileName: (NSString*) fileName
    expires: (SWGDate*) expires
    base64: (NSString*) base64
    code: (NSString*) code
    signedID: (NSString*) signedID
    
{
    _link = link;
    _md5 = md5;
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
        
        _fileName = dict[@"fileName"];
        
        
        
        id expires_dict = dict[@"expires"];
        
        if(expires_dict != nil)
            _expires = [[SWGDate  alloc]initWithValues:expires_dict];
        
        
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
        
    
    
            if(_fileName != nil) dict[@"fileName"] = _fileName ;
        
    
    
    if(_expires != nil){
        if([_expires isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_expires count] ; i++ ) {
				SWGDate *expires = [[SWGDate alloc]init];
				expires = [(NSArray*)_expires objectAtIndex:i];
                [array addObject:[(SWGObject*)expires asDictionary]];
            }
            dict[@"expires"] = array;
        }
        else if(_expires && [_expires isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_expires toString];
            if(dateString){
                dict[@"expires"] = dateString;
            }
        }
        else {
        
            if(_expires != nil) dict[@"expires"] = [(SWGObject*)_expires asDictionary];
        
        }
    }
    
    
    
            if(_base64 != nil) dict[@"base64"] = _base64 ;
        
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_signedID != nil) dict[@"signedID"] = _signedID ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

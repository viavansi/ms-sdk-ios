#import "SWGDate.h"
#import "MSMessageSetList.h"

@implementation MSMessageSetList

@synthesize code = _code;
@synthesize title = _title;
@synthesize link = _link;
@synthesize status = _status;
@synthesize recipientStatus = _recipientStatus;
@synthesize auditTrailPage = _auditTrailPage;

-(id)code: (NSString*) code
    title: (NSString*) title
    link: (NSString*) link
    status: (NSString*) status
    recipientStatus: (NSString*) recipientStatus
    auditTrailPage: (NSString*) auditTrailPage
    
{
    _code = code;
    _title = title;
    _link = link;
    _status = status;
    _recipientStatus = recipientStatus;
    _auditTrailPage = auditTrailPage;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _title = dict[@"title"];
        
        _link = dict[@"link"];
        
        _status = dict[@"status"];
        
        _recipientStatus = dict[@"recipientStatus"];
        
        _auditTrailPage = dict[@"auditTrailPage"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(_link != nil) dict[@"link"] = _link ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_recipientStatus != nil) dict[@"recipientStatus"] = _recipientStatus ;
        
    
    
            if(_auditTrailPage != nil) dict[@"auditTrailPage"] = _auditTrailPage ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
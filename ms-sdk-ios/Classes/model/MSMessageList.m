#import "SWGDate.h"
#import "MSMessageList.h"

@implementation MSMessageList

@synthesize messageCode = _messageCode;
@synthesize status = _status;
@synthesize userCode = _userCode;
@synthesize groupCode = _groupCode;
@synthesize templateCode = _templateCode;
@synthesize creationDate = _creationDate;
@synthesize externalCode = _externalCode;
@synthesize externalStatus = _externalStatus;
@synthesize setCode = _setCode;
@synthesize title = _title;
@synthesize _description = __description;
@synthesize auditTrailUrl = _auditTrailUrl;

-(id)messageCode: (NSString*) messageCode
    status: (NSString*) status
    userCode: (NSString*) userCode
    groupCode: (NSString*) groupCode
    templateCode: (NSString*) templateCode
    creationDate: (NSNumber*) creationDate
    externalCode: (NSString*) externalCode
    externalStatus: (NSString*) externalStatus
    setCode: (NSString*) setCode
    title: (NSString*) title
    _description: (NSString*) _description
    auditTrailUrl: (NSString*) auditTrailUrl
    
{
    _messageCode = messageCode;
    _status = status;
    _userCode = userCode;
    _groupCode = groupCode;
    _templateCode = templateCode;
    _creationDate = creationDate;
    _externalCode = externalCode;
    _externalStatus = externalStatus;
    _setCode = setCode;
    _title = title;
    __description = _description;
    _auditTrailUrl = auditTrailUrl;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _messageCode = dict[@"messageCode"];
        
        _status = dict[@"status"];
        
        _userCode = dict[@"userCode"];
        
        _groupCode = dict[@"groupCode"];
        
        _templateCode = dict[@"templateCode"];
        
        _creationDate = dict[@"creationDate"];
        
        _externalCode = dict[@"externalCode"];
        
        _externalStatus = dict[@"externalStatus"];
        
        _setCode = dict[@"setCode"];
        
        _title = dict[@"title"];
        
        __description = dict[@"description"];
        
        _auditTrailUrl = dict[@"auditTrailUrl"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_templateCode != nil) dict[@"templateCode"] = _templateCode ;
        
    
    
            if(_creationDate != nil) dict[@"creationDate"] = _creationDate ;
        
    
    
            if(_externalCode != nil) dict[@"externalCode"] = _externalCode ;
        
    
    
            if(_externalStatus != nil) dict[@"externalStatus"] = _externalStatus ;
        
    
    
            if(_setCode != nil) dict[@"setCode"] = _setCode ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_auditTrailUrl != nil) dict[@"auditTrailUrl"] = _auditTrailUrl ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

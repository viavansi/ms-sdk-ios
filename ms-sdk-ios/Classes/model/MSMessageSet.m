#import "SWGDate.h"
#import "MSMessageSet.h"

@implementation MSMessageSet

@synthesize code = _code;
@synthesize groupCode = _groupCode;
@synthesize expires = _expires;
@synthesize retryTime = _retryTime;
@synthesize retryCount = _retryCount;
@synthesize externalCode = _externalCode;
@synthesize externalStatus = _externalStatus;
@synthesize userCode = _userCode;
@synthesize recipients = _recipients;
@synthesize customization = _customization;
@synthesize messages = _messages;
@synthesize metadataList = _metadataList;
@synthesize messagesStep = _messagesStep;
@synthesize title = _title;
@synthesize _description = __description;
@synthesize autoFinalize = _autoFinalize;
@synthesize callbackURL = _callbackURL;
@synthesize callbackAuthorization = _callbackAuthorization;
@synthesize callbackMails = _callbackMails;
@synthesize callbackRedirectURL = _callbackRedirectURL;
@synthesize callbackRedirectURLTargetWindow = _callbackRedirectURLTargetWindow;
@synthesize callbackType = _callbackType;

-(id)code: (NSString*) code
    groupCode: (NSString*) groupCode
    expires: (NSNumber*) expires
    retryTime: (NSNumber*) retryTime
    retryCount: (NSNumber*) retryCount
    externalCode: (NSString*) externalCode
    externalStatus: (NSString*) externalStatus
    userCode: (NSString*) userCode
    recipients: (NSArray*) recipients
    customization: (MSCustomization*) customization
    messages: (NSArray*) messages
    metadataList: (NSArray*) metadataList
    messagesStep: (NSNumber*) messagesStep
    title: (NSString*) title
    _description: (NSString*) _description
    autoFinalize: (NSNumber*) autoFinalize
    callbackURL: (NSString*) callbackURL
    callbackAuthorization: (NSString*) callbackAuthorization
    callbackMails: (NSString*) callbackMails
    callbackRedirectURL: (NSString*) callbackRedirectURL
    callbackRedirectURLTargetWindow: (NSString*) callbackRedirectURLTargetWindow
    callbackType: (NSString*) callbackType
    
{
    _code = code;
    _groupCode = groupCode;
    _expires = expires;
    _retryTime = retryTime;
    _retryCount = retryCount;
    _externalCode = externalCode;
    _externalStatus = externalStatus;
    _userCode = userCode;
    _recipients = recipients;
    _customization = customization;
    _messages = messages;
    _metadataList = metadataList;
    _messagesStep = messagesStep;
    _title = title;
    __description = _description;
    _autoFinalize = autoFinalize;
    _callbackURL = callbackURL;
    _callbackAuthorization = callbackAuthorization;
    _callbackMails = callbackMails;
    _callbackRedirectURL = callbackRedirectURL;
    _callbackRedirectURLTargetWindow = callbackRedirectURLTargetWindow;
    _callbackType = callbackType;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _groupCode = dict[@"groupCode"];
        
        _expires = dict[@"expires"];
        
        _retryTime = dict[@"retryTime"];
        
        _retryCount = dict[@"retryCount"];
        
        _externalCode = dict[@"externalCode"];
        
        _externalStatus = dict[@"externalStatus"];
        
        _userCode = dict[@"userCode"];
        
        
        
        id recipients_dict = dict[@"recipients"];
        
        if([recipients_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)recipients_dict count]];
            if([(NSArray*)recipients_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)recipients_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[recipients_dict objectAtIndex:i]];
                    MSRecipient* d = [[MSRecipient alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _recipients = [[NSArray alloc] initWithArray:objs];
            }
            else
                _recipients = [[NSArray alloc] init];
        }
        else {
            _recipients = [[NSArray alloc] init];
        }
        
        
        
        
        id customization_dict = dict[@"customization"];
        
        if(customization_dict != nil)
            _customization = [[MSCustomization  alloc]initWithValues:customization_dict];
        
        
        
        
        id messages_dict = dict[@"messages"];
        
        if([messages_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)messages_dict count]];
            if([(NSArray*)messages_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)messages_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[messages_dict objectAtIndex:i]];
                    MSMessage* d = [[MSMessage alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _messages = [[NSArray alloc] initWithArray:objs];
            }
            else
                _messages = [[NSArray alloc] init];
        }
        else {
            _messages = [[NSArray alloc] init];
        }
        
        
        
        
        id metadataList_dict = dict[@"metadataList"];
        
        if([metadataList_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)metadataList_dict count]];
            if([(NSArray*)metadataList_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)metadataList_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[metadataList_dict objectAtIndex:i]];
                    MSParam* d = [[MSParam alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _metadataList = [[NSArray alloc] initWithArray:objs];
            }
            else
                _metadataList = [[NSArray alloc] init];
        }
        else {
            _metadataList = [[NSArray alloc] init];
        }
        
        
        _messagesStep = dict[@"messagesStep"];
        
        _title = dict[@"title"];
        
        __description = dict[@"description"];
        
        _autoFinalize = dict[@"autoFinalize"];
        
        _callbackURL = dict[@"callbackURL"];
        
        _callbackAuthorization = dict[@"callbackAuthorization"];
        
        _callbackMails = dict[@"callbackMails"];
        
        _callbackRedirectURL = dict[@"callbackRedirectURL"];
        
        _callbackRedirectURLTargetWindow = dict[@"callbackRedirectURLTargetWindow"];
        
        _callbackType = dict[@"callbackType"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_expires != nil) dict[@"expires"] = _expires ;
        
    
    
            if(_retryTime != nil) dict[@"retryTime"] = _retryTime ;
        
    
    
            if(_retryCount != nil) dict[@"retryCount"] = _retryCount ;
        
    
    
            if(_externalCode != nil) dict[@"externalCode"] = _externalCode ;
        
    
    
            if(_externalStatus != nil) dict[@"externalStatus"] = _externalStatus ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
    if(_recipients != nil){
        if([_recipients isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_recipients count] ; i++ ) {
				MSRecipient *recipients = [[MSRecipient alloc]init];
				recipients = [(NSArray*)_recipients objectAtIndex:i];
                [array addObject:[(SWGObject*)recipients asDictionary]];
            }
            dict[@"recipients"] = array;
        }
        else if(_recipients && [_recipients isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_recipients toString];
            if(dateString){
                dict[@"recipients"] = dateString;
            }
        }
        else {
        
            if(_recipients != nil) dict[@"recipients"] = [(SWGObject*)_recipients asDictionary];
        
        }
    }
    
    
    
    if(_customization != nil){
        if([_customization isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_customization count] ; i++ ) {
				MSCustomization *customization = [[MSCustomization alloc]init];
				customization = [(NSArray*)_customization objectAtIndex:i];
                [array addObject:[(SWGObject*)customization asDictionary]];
            }
            dict[@"customization"] = array;
        }
        else if(_customization && [_customization isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_customization toString];
            if(dateString){
                dict[@"customization"] = dateString;
            }
        }
        else {
        
            if(_customization != nil) dict[@"customization"] = [(SWGObject*)_customization asDictionary];
        
        }
    }
    
    
    
    if(_messages != nil){
        if([_messages isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_messages count] ; i++ ) {
				MSMessage *messages = [[MSMessage alloc]init];
				messages = [(NSArray*)_messages objectAtIndex:i];
                [array addObject:[(SWGObject*)messages asDictionary]];
            }
            dict[@"messages"] = array;
        }
        else if(_messages && [_messages isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_messages toString];
            if(dateString){
                dict[@"messages"] = dateString;
            }
        }
        else {
        
            if(_messages != nil) dict[@"messages"] = [(SWGObject*)_messages asDictionary];
        
        }
    }
    
    
    
    if(_metadataList != nil){
        if([_metadataList isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_metadataList count] ; i++ ) {
				MSParam *metadataList = [[MSParam alloc]init];
				metadataList = [(NSArray*)_metadataList objectAtIndex:i];
                [array addObject:[(SWGObject*)metadataList asDictionary]];
            }
            dict[@"metadataList"] = array;
        }
        else if(_metadataList && [_metadataList isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_metadataList toString];
            if(dateString){
                dict[@"metadataList"] = dateString;
            }
        }
        else {
        
            if(_metadataList != nil) dict[@"metadataList"] = [(SWGObject*)_metadataList asDictionary];
        
        }
    }
    
    
    
            if(_messagesStep != nil) dict[@"messagesStep"] = _messagesStep ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_autoFinalize != nil) dict[@"autoFinalize"] = _autoFinalize ;
        
    
    
            if(_callbackURL != nil) dict[@"callbackURL"] = _callbackURL ;
        
    
    
            if(_callbackAuthorization != nil) dict[@"callbackAuthorization"] = _callbackAuthorization ;
        
    
    
            if(_callbackMails != nil) dict[@"callbackMails"] = _callbackMails ;
        
    
    
            if(_callbackRedirectURL != nil) dict[@"callbackRedirectURL"] = _callbackRedirectURL ;
        
    
    
            if(_callbackRedirectURLTargetWindow != nil) dict[@"callbackRedirectURLTargetWindow"] = _callbackRedirectURLTargetWindow ;
        
    
    
            if(_callbackType != nil) dict[@"callbackType"] = _callbackType ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

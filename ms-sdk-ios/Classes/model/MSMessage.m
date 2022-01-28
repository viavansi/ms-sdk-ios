#import "SWGDate.h"
#import "MSMessage.h"

@implementation MSMessage

@synthesize code = _code;
@synthesize externalCode = _externalCode;
@synthesize externalStatus = _externalStatus;
@synthesize inboxCode = _inboxCode;
@synthesize inboxStatus = _inboxStatus;
@synthesize callbackInbox = _callbackInbox;
@synthesize callbackInboxAuthorization = _callbackInboxAuthorization;
@synthesize callbackCRM = _callbackCRM;
@synthesize callbackCRMAuthorization = _callbackCRMAuthorization;
@synthesize callbackCRMResponse = _callbackCRMResponse;
@synthesize callbackRedirectURL = _callbackRedirectURL;
@synthesize disabled = _disabled;
@synthesize userCode = _userCode;
@synthesize groupCode = _groupCode;
@synthesize appCode = _appCode;
@synthesize version = _version;
@synthesize workflow = _workflow;
@synthesize recipients = _recipients;
@synthesize recipientStep = _recipientStep;
@synthesize notification = _notification;
@synthesize document = _document;
@synthesize metadataList = _metadataList;
@synthesize policies = _policies;
@synthesize callbackURL = _callbackURL;
@synthesize callbackURLType = _callbackURLType;
@synthesize callbackPhones = _callbackPhones;
@synthesize callbackMails = _callbackMails;
@synthesize callbackCheckListMails = _callbackCheckListMails;
@synthesize callbackMailsFormKeys = _callbackMailsFormKeys;
@synthesize callbackMailFilename = _callbackMailFilename;
@synthesize callbackAuthorization = _callbackAuthorization;
@synthesize error = _error;
@synthesize pid = _pid;
@synthesize server = _server;
@synthesize processTimeExpired = _processTimeExpired;
@synthesize commentReject = _commentReject;
@synthesize callbackResponse = _callbackResponse;
@synthesize auditory = _auditory;
@synthesize transfers = _transfers;
@synthesize languageId = _languageId;
@synthesize timeZoneId = _timeZoneId;
@synthesize setCode = _setCode;
@synthesize setStatus = _setStatus;
@synthesize signPageServer = _signPageServer;
@synthesize auditTrailPage = _auditTrailPage;
@synthesize order = _order;
@synthesize callbackRedirectURLTargetWindow = _callbackRedirectURLTargetWindow;
@synthesize callbackProcessMessage = _callbackProcessMessage;

-(id)code: (NSString*) code
    externalCode: (NSString*) externalCode
    externalStatus: (NSString*) externalStatus
    inboxCode: (NSString*) inboxCode
    inboxStatus: (NSString*) inboxStatus
    callbackInbox: (NSString*) callbackInbox
    callbackInboxAuthorization: (NSString*) callbackInboxAuthorization
    callbackCRM: (NSString*) callbackCRM
    callbackCRMAuthorization: (NSString*) callbackCRMAuthorization
    callbackCRMResponse: (NSString*) callbackCRMResponse
    callbackRedirectURL: (NSString*) callbackRedirectURL
    disabled: (NSNumber*) disabled
    userCode: (NSString*) userCode
    groupCode: (NSString*) groupCode
    appCode: (NSString*) appCode
    version: (NSString*) version
    workflow: (MSWorkflow*) workflow
    recipients: (NSArray*) recipients
    recipientStep: (NSNumber*) recipientStep
    notification: (MSNotification*) notification
    document: (MSDocument*) document
    metadataList: (NSArray*) metadataList
    policies: (NSArray*) policies
    callbackURL: (NSString*) callbackURL
    callbackURLType: (NSString*) callbackURLType
    callbackPhones: (NSString*) callbackPhones
    callbackMails: (NSString*) callbackMails
    callbackCheckListMails: (NSString*) callbackCheckListMails
    callbackMailsFormKeys: (NSArray*) callbackMailsFormKeys
    callbackMailFilename: (NSString*) callbackMailFilename
    callbackAuthorization: (NSString*) callbackAuthorization
    error: (MSErrorResponse*) error
    pid: (NSString*) pid
    server: (NSString*) server
    processTimeExpired: (NSNumber*) processTimeExpired
    commentReject: (NSString*) commentReject
    callbackResponse: (NSString*) callbackResponse
    auditory: (NSArray*) auditory
    transfers: (NSArray*) transfers
    languageId: (NSString*) languageId
    timeZoneId: (NSString*) timeZoneId
    setCode: (NSString*) setCode
    setStatus: (NSString*) setStatus
    signPageServer: (NSString*) signPageServer
    auditTrailPage: (NSString*) auditTrailPage
    order: (NSNumber*) order
    callbackRedirectURLTargetWindow: (NSString*) callbackRedirectURLTargetWindow
    callbackProcessMessage: (NSString*) callbackProcessMessage
    
{
    _code = code;
    _externalCode = externalCode;
    _externalStatus = externalStatus;
    _inboxCode = inboxCode;
    _inboxStatus = inboxStatus;
    _callbackInbox = callbackInbox;
    _callbackInboxAuthorization = callbackInboxAuthorization;
    _callbackCRM = callbackCRM;
    _callbackCRMAuthorization = callbackCRMAuthorization;
    _callbackCRMResponse = callbackCRMResponse;
    _callbackRedirectURL = callbackRedirectURL;
    _disabled = disabled;
    _userCode = userCode;
    _groupCode = groupCode;
    _appCode = appCode;
    _version = version;
    _workflow = workflow;
    _recipients = recipients;
    _recipientStep = recipientStep;
    _notification = notification;
    _document = document;
    _metadataList = metadataList;
    _policies = policies;
    _callbackURL = callbackURL;
    _callbackURLType = callbackURLType;
    _callbackPhones = callbackPhones;
    _callbackMails = callbackMails;
    _callbackCheckListMails = callbackCheckListMails;
    _callbackMailsFormKeys = callbackMailsFormKeys;
    _callbackMailFilename = callbackMailFilename;
    _callbackAuthorization = callbackAuthorization;
    _error = error;
    _pid = pid;
    _server = server;
    _processTimeExpired = processTimeExpired;
    _commentReject = commentReject;
    _callbackResponse = callbackResponse;
    _auditory = auditory;
    _transfers = transfers;
    _languageId = languageId;
    _timeZoneId = timeZoneId;
    _setCode = setCode;
    _setStatus = setStatus;
    _signPageServer = signPageServer;
    _auditTrailPage = auditTrailPage;
    _order = order;
    _callbackRedirectURLTargetWindow = callbackRedirectURLTargetWindow;
    _callbackProcessMessage = callbackProcessMessage;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _externalCode = dict[@"externalCode"];
        
        _externalStatus = dict[@"externalStatus"];
        
        _inboxCode = dict[@"inboxCode"];
        
        _inboxStatus = dict[@"inboxStatus"];
        
        _callbackInbox = dict[@"callbackInbox"];
        
        _callbackInboxAuthorization = dict[@"callbackInboxAuthorization"];
        
        _callbackCRM = dict[@"callbackCRM"];
        
        _callbackCRMAuthorization = dict[@"callbackCRMAuthorization"];
        
        _callbackCRMResponse = dict[@"callbackCRMResponse"];
        
        _callbackRedirectURL = dict[@"callbackRedirectURL"];
        
        _disabled = dict[@"disabled"];
        
        _userCode = dict[@"userCode"];
        
        _groupCode = dict[@"groupCode"];
        
        _appCode = dict[@"appCode"];
        
        _version = dict[@"version"];
        
        
        
        id workflow_dict = dict[@"workflow"];
        
        if(workflow_dict != nil)
            _workflow = [[MSWorkflow  alloc]initWithValues:workflow_dict];
        
        
        
        
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
        
        
        _recipientStep = dict[@"recipientStep"];
        
        
        
        id notification_dict = dict[@"notification"];
        
        if(notification_dict != nil)
            _notification = [[MSNotification  alloc]initWithValues:notification_dict];
        
        
        
        
        id document_dict = dict[@"document"];
        
        if(document_dict != nil)
            _document = [[MSDocument  alloc]initWithValues:document_dict];
        
        
        
        
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
        
        
        
        
        id policies_dict = dict[@"policies"];
        
        if([policies_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)policies_dict count]];
            if([(NSArray*)policies_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)policies_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[policies_dict objectAtIndex:i]];
                    MSPolicy* d = [[MSPolicy alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _policies = [[NSArray alloc] initWithArray:objs];
            }
            else
                _policies = [[NSArray alloc] init];
        }
        else {
            _policies = [[NSArray alloc] init];
        }
        
        
        _callbackURL = dict[@"callbackURL"];
        
        _callbackURLType = dict[@"callbackURLType"];
        
        _callbackPhones = dict[@"callbackPhones"];
        
        _callbackMails = dict[@"callbackMails"];
        
        _callbackCheckListMails = dict[@"callbackCheckListMails"];
        
        _callbackMailsFormKeys = dict[@"callbackMailsFormKeys"];
        
        _callbackMailFilename = dict[@"callbackMailFilename"];
        
        _callbackAuthorization = dict[@"callbackAuthorization"];
        
        
        
        id error_dict = dict[@"error"];
        
        if(error_dict != nil)
            _error = [[MSErrorResponse  alloc]initWithValues:error_dict];
        
        
        _pid = dict[@"pid"];
        
        _server = dict[@"server"];
        
        _processTimeExpired = dict[@"processTimeExpired"];
        
        _commentReject = dict[@"commentReject"];
        
        _callbackResponse = dict[@"callbackResponse"];
        
        
        
        id auditory_dict = dict[@"auditory"];
        
        if([auditory_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)auditory_dict count]];
            if([(NSArray*)auditory_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)auditory_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[auditory_dict objectAtIndex:i]];
                    MSAuditory* d = [[MSAuditory alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _auditory = [[NSArray alloc] initWithArray:objs];
            }
            else
                _auditory = [[NSArray alloc] init];
        }
        else {
            _auditory = [[NSArray alloc] init];
        }
        
        
        
        
        id transfers_dict = dict[@"transfers"];
        
        if([transfers_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)transfers_dict count]];
            if([(NSArray*)transfers_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)transfers_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[transfers_dict objectAtIndex:i]];
                    MSTransfer* d = [[MSTransfer alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _transfers = [[NSArray alloc] initWithArray:objs];
            }
            else
                _transfers = [[NSArray alloc] init];
        }
        else {
            _transfers = [[NSArray alloc] init];
        }
        
        
        _languageId = dict[@"languageId"];
        
        _timeZoneId = dict[@"timeZoneId"];
        
        _setCode = dict[@"setCode"];
        
        _setStatus = dict[@"setStatus"];
        
        _signPageServer = dict[@"signPageServer"];
        
        _auditTrailPage = dict[@"auditTrailPage"];
        
        _order = dict[@"order"];
        
        _callbackRedirectURLTargetWindow = dict[@"callbackRedirectURLTargetWindow"];
        
        _callbackProcessMessage = dict[@"callbackProcessMessage"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_externalCode != nil) dict[@"externalCode"] = _externalCode ;
        
    
    
            if(_externalStatus != nil) dict[@"externalStatus"] = _externalStatus ;
        
    
    
            if(_inboxCode != nil) dict[@"inboxCode"] = _inboxCode ;
        
    
    
            if(_inboxStatus != nil) dict[@"inboxStatus"] = _inboxStatus ;
        
    
    
            if(_callbackInbox != nil) dict[@"callbackInbox"] = _callbackInbox ;
        
    
    
            if(_callbackInboxAuthorization != nil) dict[@"callbackInboxAuthorization"] = _callbackInboxAuthorization ;
        
    
    
            if(_callbackCRM != nil) dict[@"callbackCRM"] = _callbackCRM ;
        
    
    
            if(_callbackCRMAuthorization != nil) dict[@"callbackCRMAuthorization"] = _callbackCRMAuthorization ;
        
    
    
            if(_callbackCRMResponse != nil) dict[@"callbackCRMResponse"] = _callbackCRMResponse ;
        
    
    
            if(_callbackRedirectURL != nil) dict[@"callbackRedirectURL"] = _callbackRedirectURL ;
        
    
    
            if(_disabled != nil) dict[@"disabled"] = _disabled ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_appCode != nil) dict[@"appCode"] = _appCode ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    
    
    if(_workflow != nil){
        if([_workflow isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_workflow count] ; i++ ) {
				MSWorkflow *workflow = [[MSWorkflow alloc]init];
				workflow = [(NSArray*)_workflow objectAtIndex:i];
                [array addObject:[(SWGObject*)workflow asDictionary]];
            }
            dict[@"workflow"] = array;
        }
        else if(_workflow && [_workflow isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_workflow toString];
            if(dateString){
                dict[@"workflow"] = dateString;
            }
        }
        else {
        
            if(_workflow != nil) dict[@"workflow"] = [(SWGObject*)_workflow asDictionary];
        
        }
    }
    
    
    
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
    
    
    
            if(_recipientStep != nil) dict[@"recipientStep"] = _recipientStep ;
        
    
    
    if(_notification != nil){
        if([_notification isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_notification count] ; i++ ) {
				MSNotification *notification = [[MSNotification alloc]init];
				notification = [(NSArray*)_notification objectAtIndex:i];
                [array addObject:[(SWGObject*)notification asDictionary]];
            }
            dict[@"notification"] = array;
        }
        else if(_notification && [_notification isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_notification toString];
            if(dateString){
                dict[@"notification"] = dateString;
            }
        }
        else {
        
            if(_notification != nil) dict[@"notification"] = [(SWGObject*)_notification asDictionary];
        
        }
    }
    
    
    
    if(_document != nil){
        if([_document isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_document count] ; i++ ) {
				MSDocument *document = [[MSDocument alloc]init];
				document = [(NSArray*)_document objectAtIndex:i];
                [array addObject:[(SWGObject*)document asDictionary]];
            }
            dict[@"document"] = array;
        }
        else if(_document && [_document isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_document toString];
            if(dateString){
                dict[@"document"] = dateString;
            }
        }
        else {
        
            if(_document != nil) dict[@"document"] = [(SWGObject*)_document asDictionary];
        
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
    
    
    
    if(_policies != nil){
        if([_policies isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_policies count] ; i++ ) {
				MSPolicy *policies = [[MSPolicy alloc]init];
				policies = [(NSArray*)_policies objectAtIndex:i];
                [array addObject:[(SWGObject*)policies asDictionary]];
            }
            dict[@"policies"] = array;
        }
        else if(_policies && [_policies isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_policies toString];
            if(dateString){
                dict[@"policies"] = dateString;
            }
        }
        else {
        
            if(_policies != nil) dict[@"policies"] = [(SWGObject*)_policies asDictionary];
        
        }
    }
    
    
    
            if(_callbackURL != nil) dict[@"callbackURL"] = _callbackURL ;
        
    
    
            if(_callbackURLType != nil) dict[@"callbackURLType"] = _callbackURLType ;
        
    
    
            if(_callbackPhones != nil) dict[@"callbackPhones"] = _callbackPhones ;
        
    
    
            if(_callbackMails != nil) dict[@"callbackMails"] = _callbackMails ;
        
    
    
            if(_callbackCheckListMails != nil) dict[@"callbackCheckListMails"] = _callbackCheckListMails ;
        
    
    
            if(_callbackMailsFormKeys != nil) dict[@"callbackMailsFormKeys"] = _callbackMailsFormKeys ;
        
    
    
            if(_callbackMailFilename != nil) dict[@"callbackMailFilename"] = _callbackMailFilename ;
        
    
    
            if(_callbackAuthorization != nil) dict[@"callbackAuthorization"] = _callbackAuthorization ;
        
    
    
    if(_error != nil){
        if([_error isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_error count] ; i++ ) {
				MSErrorResponse *error = [[MSErrorResponse alloc]init];
				error = [(NSArray*)_error objectAtIndex:i];
                [array addObject:[(SWGObject*)error asDictionary]];
            }
            dict[@"error"] = array;
        }
        else if(_error && [_error isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_error toString];
            if(dateString){
                dict[@"error"] = dateString;
            }
        }
        else {
        
            if(_error != nil) dict[@"error"] = [(SWGObject*)_error asDictionary];
        
        }
    }
    
    
    
            if(_pid != nil) dict[@"pid"] = _pid ;
        
    
    
            if(_server != nil) dict[@"server"] = _server ;
        
    
    
            if(_processTimeExpired != nil) dict[@"processTimeExpired"] = _processTimeExpired ;
        
    
    
            if(_commentReject != nil) dict[@"commentReject"] = _commentReject ;
        
    
    
            if(_callbackResponse != nil) dict[@"callbackResponse"] = _callbackResponse ;
        
    
    
    if(_auditory != nil){
        if([_auditory isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_auditory count] ; i++ ) {
				MSAuditory *auditory = [[MSAuditory alloc]init];
				auditory = [(NSArray*)_auditory objectAtIndex:i];
                [array addObject:[(SWGObject*)auditory asDictionary]];
            }
            dict[@"auditory"] = array;
        }
        else if(_auditory && [_auditory isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_auditory toString];
            if(dateString){
                dict[@"auditory"] = dateString;
            }
        }
        else {
        
            if(_auditory != nil) dict[@"auditory"] = [(SWGObject*)_auditory asDictionary];
        
        }
    }
    
    
    
    if(_transfers != nil){
        if([_transfers isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_transfers count] ; i++ ) {
				MSTransfer *transfers = [[MSTransfer alloc]init];
				transfers = [(NSArray*)_transfers objectAtIndex:i];
                [array addObject:[(SWGObject*)transfers asDictionary]];
            }
            dict[@"transfers"] = array;
        }
        else if(_transfers && [_transfers isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_transfers toString];
            if(dateString){
                dict[@"transfers"] = dateString;
            }
        }
        else {
        
            if(_transfers != nil) dict[@"transfers"] = [(SWGObject*)_transfers asDictionary];
        
        }
    }
    
    
    
            if(_languageId != nil) dict[@"languageId"] = _languageId ;
        
    
    
            if(_timeZoneId != nil) dict[@"timeZoneId"] = _timeZoneId ;
        
    
    
            if(_setCode != nil) dict[@"setCode"] = _setCode ;
        
    
    
            if(_setStatus != nil) dict[@"setStatus"] = _setStatus ;
        
    
    
            if(_signPageServer != nil) dict[@"signPageServer"] = _signPageServer ;
        
    
    
            if(_auditTrailPage != nil) dict[@"auditTrailPage"] = _auditTrailPage ;
        
    
    
            if(_order != nil) dict[@"order"] = _order ;
        
    
    
            if(_callbackRedirectURLTargetWindow != nil) dict[@"callbackRedirectURLTargetWindow"] = _callbackRedirectURLTargetWindow ;
        
    
    
            if(_callbackProcessMessage != nil) dict[@"callbackProcessMessage"] = _callbackProcessMessage ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

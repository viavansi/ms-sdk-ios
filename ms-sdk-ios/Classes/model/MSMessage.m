#import "SWGDate.h"
#import "MSMessage.h"

@implementation MSMessage

-(id)code: (NSString*) code
    userCode: (NSString*) userCode
    groupCode: (NSString*) groupCode
    appCode: (NSString*) appCode
    version: (NSString*) version
    workflow: (MSWorkflow*) workflow
    notification: (MSNotification*) notification
    document: (MSDocument*) document
    metadataList: (NSArray*) metadataList
    policies: (NSArray*) policies
    callbackURL: (NSString*) callbackURL
    callbackMails: (NSString*) callbackMails
    callbackMailsFormKeys: (NSArray*) callbackMailsFormKeys
    error: (MSErrorResponse*) error
    pid: (NSString*) pid
    server: (NSString*) server
    processTimeExpired: (SWGDate*) processTimeExpired
    commentReject: (NSString*) commentReject
    
{
    _code = code;
    _userCode = userCode;
    _groupCode = groupCode;
    _appCode = appCode;
    _version = version;
    _workflow = workflow;
    _notification = notification;
    _document = document;
    _metadataList = metadataList;
    _policies = policies;
    _callbackURL = callbackURL;
    _callbackMails = callbackMails;
    _callbackMailsFormKeys = callbackMailsFormKeys;
    _error = error;
    _pid = pid;
    _server = server;
    _processTimeExpired = processTimeExpired;
    _commentReject = commentReject;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _userCode = dict[@"userCode"];
        
        _groupCode = dict[@"groupCode"];
        
        _appCode = dict[@"appCode"];
        
        _version = dict[@"version"];
        
        
        
        id workflow_dict = dict[@"workflow"];
        
        if(workflow_dict != nil)
            _workflow = [[MSWorkflow  alloc]initWithValues:workflow_dict];
        
        
        
        
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
                for (NSDictionary* dict in (NSArray*)metadataList_dict) {
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
                for (NSDictionary* dict in (NSArray*)policies_dict) {
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
        
        _callbackMails = dict[@"callbackMails"];
        
        _callbackMailsFormKeys = dict[@"callbackMailsFormKeys"];
        
        
        
        id error_dict = dict[@"error"];
        
        if(error_dict != nil)
            _error = [[MSErrorResponse  alloc]initWithValues:error_dict];
        
        
        _pid = dict[@"pid"];
        
        _server = dict[@"server"];
        
        
        
        id processTimeExpired_dict = dict[@"processTimeExpired"];
        
        if(processTimeExpired_dict != nil)
            _processTimeExpired = [[SWGDate  alloc]initWithValues:processTimeExpired_dict];
        
        
        _commentReject = dict[@"commentReject"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_appCode != nil) dict[@"appCode"] = _appCode ;
        
    
    
            if(_version != nil) dict[@"version"] = _version ;
        
    
    
    if(_workflow != nil){
        if([_workflow isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSWorkflow *workflow in (NSArray*)_workflow) {
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
    
    
    
    if(_notification != nil){
        if([_notification isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSNotification *notification in (NSArray*)_notification) {
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
            for( MSDocument *document in (NSArray*)_document) {
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
            for( MSParam *metadataList in (NSArray*)_metadataList) {
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
            for( MSPolicy *policies in (NSArray*)_policies) {
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
        
    
    
            if(_callbackMails != nil) dict[@"callbackMails"] = _callbackMails ;
        
    
    
            if(_callbackMailsFormKeys != nil) dict[@"callbackMailsFormKeys"] = _callbackMailsFormKeys ;
        
    
    
    if(_error != nil){
        if([_error isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( MSErrorResponse *error in (NSArray*)_error) {
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
        
    
    
    if(_processTimeExpired != nil){
        if([_processTimeExpired isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDate *processTimeExpired in (NSArray*)_processTimeExpired) {
                [array addObject:[(SWGObject*)processTimeExpired asDictionary]];
            }
            dict[@"processTimeExpired"] = array;
        }
        else if(_processTimeExpired && [_processTimeExpired isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_processTimeExpired toString];
            if(dateString){
                dict[@"processTimeExpired"] = dateString;
            }
        }
        else {
        
            if(_processTimeExpired != nil) dict[@"processTimeExpired"] = [(SWGObject*)_processTimeExpired asDictionary];
        
        }
    }
    
    
    
            if(_commentReject != nil) dict[@"commentReject"] = _commentReject ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

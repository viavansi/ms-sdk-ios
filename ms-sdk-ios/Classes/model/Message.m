#import "SWGDate.h"
#import "Message.h"

@implementation Message

-(id)code: (NSString*) code
    userCode: (NSString*) userCode
    groupCode: (NSString*) groupCode
    appCode: (NSString*) appCode
    version: (NSString*) version
    workflow: (Workflow*) workflow
    notification: (Notification*) notification
    document: (Document*) document
    metadataList: (NSArray*) metadataList
    policies: (NSArray*) policies
    callbackURL: (NSString*) callbackURL
    callbackMails: (NSString*) callbackMails
    callbackMailsFormKeys: (NSArray*) callbackMailsFormKeys
    error: (ErrorResponse*) error
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
            _workflow = [[Workflow  alloc]initWithValues:workflow_dict];
        
        
        
        
        id notification_dict = dict[@"notification"];
        
        if(notification_dict != nil)
            _notification = [[Notification  alloc]initWithValues:notification_dict];
        
        
        
        
        id document_dict = dict[@"document"];
        
        if(document_dict != nil)
            _document = [[Document  alloc]initWithValues:document_dict];
        
        
        
        
        id metadataList_dict = dict[@"metadataList"];
        
        if([metadataList_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)metadataList_dict count]];
            if([(NSArray*)metadataList_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)metadataList_dict) {
                    Param* d = [[Param alloc] initWithValues:dict];
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
                    Policy* d = [[Policy alloc] initWithValues:dict];
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
            _error = [[ErrorResponse  alloc]initWithValues:error_dict];
        
        
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
            for( Workflow *workflow in (NSArray*)_workflow) {
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
            for( Notification *notification in (NSArray*)_notification) {
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
            for( Document *document in (NSArray*)_document) {
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
            for( Param *metadataList in (NSArray*)_metadataList) {
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
            for( Policy *policies in (NSArray*)_policies) {
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
            for( ErrorResponse *error in (NSArray*)_error) {
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
    
    
    
            if(_commentReject != nil) dict[@"commentReject"] = _commentReject ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

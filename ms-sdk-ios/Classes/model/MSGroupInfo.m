#import "SWGDate.h"
#import "MSGroupInfo.h"

@implementation MSGroupInfo

@synthesize code = _code;
@synthesize title = _title;
@synthesize tsaUrl = _tsaUrl;
@synthesize tsaUser = _tsaUser;
@synthesize tsaUserPassword = _tsaUserPassword;
@synthesize tsaPolicyId = _tsaPolicyId;
@synthesize tsaAlias = _tsaAlias;
@synthesize smsUrl = _smsUrl;
@synthesize smsUser = _smsUser;
@synthesize smsPassword = _smsPassword;
@synthesize transferSystem = _transferSystem;
@synthesize deleteSignedDocuments = _deleteSignedDocuments;
@synthesize ttlMessage = _ttlMessage;
@synthesize tteNotification = _tteNotification;
@synthesize custodyCode = _custodyCode;
@synthesize tsaAuthTls = _tsaAuthTls;
@synthesize dataProtectionLevel = _dataProtectionLevel;
@synthesize verificationDocUrl = _verificationDocUrl;
@synthesize callbackMailStatus = _callbackMailStatus;
@synthesize referenceCode = _referenceCode;
@synthesize _description = __description;
@synthesize style = _style;
@synthesize extensionOid = _extensionOid;
@synthesize extensionValue = _extensionValue;
@synthesize creationDate = _creationDate;
@synthesize startDate = _startDate;
@synthesize endDate = _endDate;
@synthesize renovationDate = _renovationDate;
@synthesize active = _active;
@synthesize properties = _properties;
@synthesize apps = _apps;
@synthesize templates = _templates;
@synthesize users = _users;

-(id)code: (NSString*) code
    title: (NSString*) title
    tsaUrl: (NSString*) tsaUrl
    tsaUser: (NSString*) tsaUser
    tsaUserPassword: (NSString*) tsaUserPassword
    tsaPolicyId: (NSString*) tsaPolicyId
    tsaAlias: (NSString*) tsaAlias
    smsUrl: (NSString*) smsUrl
    smsUser: (NSString*) smsUser
    smsPassword: (NSString*) smsPassword
    transferSystem: (NSString*) transferSystem
    deleteSignedDocuments: (NSNumber*) deleteSignedDocuments
    ttlMessage: (NSNumber*) ttlMessage
    tteNotification: (NSNumber*) tteNotification
    custodyCode: (NSString*) custodyCode
    tsaAuthTls: (NSNumber*) tsaAuthTls
    dataProtectionLevel: (NSNumber*) dataProtectionLevel
    verificationDocUrl: (NSString*) verificationDocUrl
    callbackMailStatus: (NSString*) callbackMailStatus
    referenceCode: (NSString*) referenceCode
    _description: (NSString*) _description
    style: (MSStyle*) style
    extensionOid: (NSString*) extensionOid
    extensionValue: (NSString*) extensionValue
    creationDate: (SWGDate*) creationDate
    startDate: (SWGDate*) startDate
    endDate: (SWGDate*) endDate
    renovationDate: (SWGDate*) renovationDate
    active: (NSNumber*) active
    properties: (NSArray*) properties
    apps: (NSArray*) apps
    templates: (NSArray*) templates
    users: (NSArray*) users
    
{
    _code = code;
    _title = title;
    _tsaUrl = tsaUrl;
    _tsaUser = tsaUser;
    _tsaUserPassword = tsaUserPassword;
    _tsaPolicyId = tsaPolicyId;
    _tsaAlias = tsaAlias;
    _smsUrl = smsUrl;
    _smsUser = smsUser;
    _smsPassword = smsPassword;
    _transferSystem = transferSystem;
    _deleteSignedDocuments = deleteSignedDocuments;
    _ttlMessage = ttlMessage;
    _tteNotification = tteNotification;
    _custodyCode = custodyCode;
    _tsaAuthTls = tsaAuthTls;
    _dataProtectionLevel = dataProtectionLevel;
    _verificationDocUrl = verificationDocUrl;
    _callbackMailStatus = callbackMailStatus;
    _referenceCode = referenceCode;
    __description = _description;
    _style = style;
    _extensionOid = extensionOid;
    _extensionValue = extensionValue;
    _creationDate = creationDate;
    _startDate = startDate;
    _endDate = endDate;
    _renovationDate = renovationDate;
    _active = active;
    _properties = properties;
    _apps = apps;
    _templates = templates;
    _users = users;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _title = dict[@"title"];
        
        _tsaUrl = dict[@"tsaUrl"];
        
        _tsaUser = dict[@"tsaUser"];
        
        _tsaUserPassword = dict[@"tsaUserPassword"];
        
        _tsaPolicyId = dict[@"tsaPolicyId"];
        
        _tsaAlias = dict[@"tsaAlias"];
        
        _smsUrl = dict[@"smsUrl"];
        
        _smsUser = dict[@"smsUser"];
        
        _smsPassword = dict[@"smsPassword"];
        
        _transferSystem = dict[@"transferSystem"];
        
        _deleteSignedDocuments = dict[@"deleteSignedDocuments"];
        
        _ttlMessage = dict[@"ttlMessage"];
        
        _tteNotification = dict[@"tteNotification"];
        
        _custodyCode = dict[@"custodyCode"];
        
        _tsaAuthTls = dict[@"tsaAuthTls"];
        
        _dataProtectionLevel = dict[@"dataProtectionLevel"];
        
        _verificationDocUrl = dict[@"verificationDocUrl"];
        
        _callbackMailStatus = dict[@"callbackMailStatus"];
        
        _referenceCode = dict[@"referenceCode"];
        
        __description = dict[@"description"];
        
        
        
        id style_dict = dict[@"style"];
        
        if(style_dict != nil)
            _style = [[MSStyle  alloc]initWithValues:style_dict];
        
        
        _extensionOid = dict[@"extensionOid"];
        
        _extensionValue = dict[@"extensionValue"];
        
        
        
        id creationDate_dict = dict[@"creationDate"];
        
        if(creationDate_dict != nil)
            _creationDate = [[SWGDate  alloc]initWithValues:creationDate_dict];
        
        
        
        
        id startDate_dict = dict[@"startDate"];
        
        if(startDate_dict != nil)
            _startDate = [[SWGDate  alloc]initWithValues:startDate_dict];
        
        
        
        
        id endDate_dict = dict[@"endDate"];
        
        if(endDate_dict != nil)
            _endDate = [[SWGDate  alloc]initWithValues:endDate_dict];
        
        
        
        
        id renovationDate_dict = dict[@"renovationDate"];
        
        if(renovationDate_dict != nil)
            _renovationDate = [[SWGDate  alloc]initWithValues:renovationDate_dict];
        
        
        _active = dict[@"active"];
        
        
        
        id properties_dict = dict[@"properties"];
        
        if([properties_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)properties_dict count]];
            if([(NSArray*)properties_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)properties_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[properties_dict objectAtIndex:i]];
                    MSProperty* d = [[MSProperty alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _properties = [[NSArray alloc] initWithArray:objs];
            }
            else
                _properties = [[NSArray alloc] init];
        }
        else {
            _properties = [[NSArray alloc] init];
        }
        
        
        
        
        id apps_dict = dict[@"apps"];
        
        if([apps_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)apps_dict count]];
            if([(NSArray*)apps_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)apps_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[apps_dict objectAtIndex:i]];
                    MSConfiguration* d = [[MSConfiguration alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _apps = [[NSArray alloc] initWithArray:objs];
            }
            else
                _apps = [[NSArray alloc] init];
        }
        else {
            _apps = [[NSArray alloc] init];
        }
        
        
        
        
        id templates_dict = dict[@"templates"];
        
        if([templates_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)templates_dict count]];
            if([(NSArray*)templates_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)templates_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[templates_dict objectAtIndex:i]];
                    MSTemplate* d = [[MSTemplate alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _templates = [[NSArray alloc] initWithArray:objs];
            }
            else
                _templates = [[NSArray alloc] init];
        }
        else {
            _templates = [[NSArray alloc] init];
        }
        
        
        
        
        id users_dict = dict[@"users"];
        
        if([users_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)users_dict count]];
            if([(NSArray*)users_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)users_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[users_dict objectAtIndex:i]];
                    MSUser* d = [[MSUser alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _users = [[NSArray alloc] initWithArray:objs];
            }
            else
                _users = [[NSArray alloc] init];
        }
        else {
            _users = [[NSArray alloc] init];
        }
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_title != nil) dict[@"title"] = _title ;
        
    
    
            if(_tsaUrl != nil) dict[@"tsaUrl"] = _tsaUrl ;
        
    
    
            if(_tsaUser != nil) dict[@"tsaUser"] = _tsaUser ;
        
    
    
            if(_tsaUserPassword != nil) dict[@"tsaUserPassword"] = _tsaUserPassword ;
        
    
    
            if(_tsaPolicyId != nil) dict[@"tsaPolicyId"] = _tsaPolicyId ;
        
    
    
            if(_tsaAlias != nil) dict[@"tsaAlias"] = _tsaAlias ;
        
    
    
            if(_smsUrl != nil) dict[@"smsUrl"] = _smsUrl ;
        
    
    
            if(_smsUser != nil) dict[@"smsUser"] = _smsUser ;
        
    
    
            if(_smsPassword != nil) dict[@"smsPassword"] = _smsPassword ;
        
    
    
            if(_transferSystem != nil) dict[@"transferSystem"] = _transferSystem ;
        
    
    
            if(_deleteSignedDocuments != nil) dict[@"deleteSignedDocuments"] = _deleteSignedDocuments ;
        
    
    
            if(_ttlMessage != nil) dict[@"ttlMessage"] = _ttlMessage ;
        
    
    
            if(_tteNotification != nil) dict[@"tteNotification"] = _tteNotification ;
        
    
    
            if(_custodyCode != nil) dict[@"custodyCode"] = _custodyCode ;
        
    
    
            if(_tsaAuthTls != nil) dict[@"tsaAuthTls"] = _tsaAuthTls ;
        
    
    
            if(_dataProtectionLevel != nil) dict[@"dataProtectionLevel"] = _dataProtectionLevel ;
        
    
    
            if(_verificationDocUrl != nil) dict[@"verificationDocUrl"] = _verificationDocUrl ;
        
    
    
            if(_callbackMailStatus != nil) dict[@"callbackMailStatus"] = _callbackMailStatus ;
        
    
    
            if(_referenceCode != nil) dict[@"referenceCode"] = _referenceCode ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
    if(_style != nil){
        if([_style isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_style count] ; i++ ) {
				MSStyle *style = [[MSStyle alloc]init];
				style = [(NSArray*)_style objectAtIndex:i];
                [array addObject:[(SWGObject*)style asDictionary]];
            }
            dict[@"style"] = array;
        }
        else if(_style && [_style isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_style toString];
            if(dateString){
                dict[@"style"] = dateString;
            }
        }
        else {
        
            if(_style != nil) dict[@"style"] = [(SWGObject*)_style asDictionary];
        
        }
    }
    
    
    
            if(_extensionOid != nil) dict[@"extensionOid"] = _extensionOid ;
        
    
    
            if(_extensionValue != nil) dict[@"extensionValue"] = _extensionValue ;
        
    
    
    if(_creationDate != nil){
        if([_creationDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_creationDate count] ; i++ ) {
				SWGDate *creationDate = [[SWGDate alloc]init];
				creationDate = [(NSArray*)_creationDate objectAtIndex:i];
                [array addObject:[(SWGObject*)creationDate asDictionary]];
            }
            dict[@"creationDate"] = array;
        }
        else if(_creationDate && [_creationDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_creationDate toString];
            if(dateString){
                dict[@"creationDate"] = dateString;
            }
        }
        else {
        
            if(_creationDate != nil) dict[@"creationDate"] = [(SWGObject*)_creationDate asDictionary];
        
        }
    }
    
    
    
    if(_startDate != nil){
        if([_startDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_startDate count] ; i++ ) {
				SWGDate *startDate = [[SWGDate alloc]init];
				startDate = [(NSArray*)_startDate objectAtIndex:i];
                [array addObject:[(SWGObject*)startDate asDictionary]];
            }
            dict[@"startDate"] = array;
        }
        else if(_startDate && [_startDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_startDate toString];
            if(dateString){
                dict[@"startDate"] = dateString;
            }
        }
        else {
        
            if(_startDate != nil) dict[@"startDate"] = [(SWGObject*)_startDate asDictionary];
        
        }
    }
    
    
    
    if(_endDate != nil){
        if([_endDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_endDate count] ; i++ ) {
				SWGDate *endDate = [[SWGDate alloc]init];
				endDate = [(NSArray*)_endDate objectAtIndex:i];
                [array addObject:[(SWGObject*)endDate asDictionary]];
            }
            dict[@"endDate"] = array;
        }
        else if(_endDate && [_endDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_endDate toString];
            if(dateString){
                dict[@"endDate"] = dateString;
            }
        }
        else {
        
            if(_endDate != nil) dict[@"endDate"] = [(SWGObject*)_endDate asDictionary];
        
        }
    }
    
    
    
    if(_renovationDate != nil){
        if([_renovationDate isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_renovationDate count] ; i++ ) {
				SWGDate *renovationDate = [[SWGDate alloc]init];
				renovationDate = [(NSArray*)_renovationDate objectAtIndex:i];
                [array addObject:[(SWGObject*)renovationDate asDictionary]];
            }
            dict[@"renovationDate"] = array;
        }
        else if(_renovationDate && [_renovationDate isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_renovationDate toString];
            if(dateString){
                dict[@"renovationDate"] = dateString;
            }
        }
        else {
        
            if(_renovationDate != nil) dict[@"renovationDate"] = [(SWGObject*)_renovationDate asDictionary];
        
        }
    }
    
    
    
            if(_active != nil) dict[@"active"] = _active ;
        
    
    
    if(_properties != nil){
        if([_properties isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_properties count] ; i++ ) {
				MSProperty *properties = [[MSProperty alloc]init];
				properties = [(NSArray*)_properties objectAtIndex:i];
                [array addObject:[(SWGObject*)properties asDictionary]];
            }
            dict[@"properties"] = array;
        }
        else if(_properties && [_properties isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_properties toString];
            if(dateString){
                dict[@"properties"] = dateString;
            }
        }
        else {
        
            if(_properties != nil) dict[@"properties"] = [(SWGObject*)_properties asDictionary];
        
        }
    }
    
    
    
    if(_apps != nil){
        if([_apps isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_apps count] ; i++ ) {
				MSConfiguration *apps = [[MSConfiguration alloc]init];
				apps = [(NSArray*)_apps objectAtIndex:i];
                [array addObject:[(SWGObject*)apps asDictionary]];
            }
            dict[@"apps"] = array;
        }
        else if(_apps && [_apps isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_apps toString];
            if(dateString){
                dict[@"apps"] = dateString;
            }
        }
        else {
        
            if(_apps != nil) dict[@"apps"] = [(SWGObject*)_apps asDictionary];
        
        }
    }
    
    
    
    if(_templates != nil){
        if([_templates isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_templates count] ; i++ ) {
				MSTemplate *templates = [[MSTemplate alloc]init];
				templates = [(NSArray*)_templates objectAtIndex:i];
                [array addObject:[(SWGObject*)templates asDictionary]];
            }
            dict[@"templates"] = array;
        }
        else if(_templates && [_templates isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_templates toString];
            if(dateString){
                dict[@"templates"] = dateString;
            }
        }
        else {
        
            if(_templates != nil) dict[@"templates"] = [(SWGObject*)_templates asDictionary];
        
        }
    }
    
    
    
    if(_users != nil){
        if([_users isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_users count] ; i++ ) {
				MSUser *users = [[MSUser alloc]init];
				users = [(NSArray*)_users objectAtIndex:i];
                [array addObject:[(SWGObject*)users asDictionary]];
            }
            dict[@"users"] = array;
        }
        else if(_users && [_users isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_users toString];
            if(dateString){
                dict[@"users"] = dateString;
            }
        }
        else {
        
            if(_users != nil) dict[@"users"] = [(SWGObject*)_users asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

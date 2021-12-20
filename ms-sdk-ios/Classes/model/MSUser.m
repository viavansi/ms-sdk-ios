#import "SWGDate.h"
#import "MSUser.h"

@implementation MSUser

@synthesize code = _code;
@synthesize nationalId = _nationalId;
@synthesize email = _email;
@synthesize password = _password;
@synthesize name = _name;
@synthesize surname = _surname;
@synthesize rol = _rol;
@synthesize _description = __description;
@synthesize viafirmaKey = _viafirmaKey;
@synthesize viafirmaPassword = _viafirmaPassword;
@synthesize viafirmaCertificate = _viafirmaCertificate;
@synthesize region = _region;
@synthesize pos = _pos;
@synthesize confirmToken = _confirmToken;
@synthesize changePassToken = _changePassToken;
@synthesize logDevice = _logDevice;
@synthesize status = _status;
@synthesize showLastLogin = _showLastLogin;
@synthesize groups = _groups;
@synthesize groupsInfo = _groupsInfo;
@synthesize properties = _properties;
@synthesize roles = _roles;
@synthesize mobile = _mobile;
@synthesize channel = _channel;

-(id)code: (NSString*) code
    nationalId: (NSString*) nationalId
    email: (NSString*) email
    password: (NSString*) password
    name: (NSString*) name
    surname: (NSString*) surname
    rol: (NSString*) rol
    _description: (NSString*) _description
    viafirmaKey: (NSString*) viafirmaKey
    viafirmaPassword: (NSString*) viafirmaPassword
    viafirmaCertificate: (NSString*) viafirmaCertificate
    region: (NSString*) region
    pos: (NSString*) pos
    confirmToken: (NSString*) confirmToken
    changePassToken: (NSString*) changePassToken
    logDevice: (NSNumber*) logDevice
    status: (NSString*) status
    showLastLogin: (NSNumber*) showLastLogin
    groups: (NSArray*) groups
    groupsInfo: (NSArray*) groupsInfo
    properties: (NSArray*) properties
    roles: (NSArray*) roles
    mobile: (NSString*) mobile
    channel: (NSString*) channel
    
{
    _code = code;
    _nationalId = nationalId;
    _email = email;
    _password = password;
    _name = name;
    _surname = surname;
    _rol = rol;
    __description = _description;
    _viafirmaKey = viafirmaKey;
    _viafirmaPassword = viafirmaPassword;
    _viafirmaCertificate = viafirmaCertificate;
    _region = region;
    _pos = pos;
    _confirmToken = confirmToken;
    _changePassToken = changePassToken;
    _logDevice = logDevice;
    _status = status;
    _showLastLogin = showLastLogin;
    _groups = groups;
    _groupsInfo = groupsInfo;
    _properties = properties;
    _roles = roles;
    _mobile = mobile;
    _channel = channel;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _nationalId = dict[@"nationalId"];
        
        _email = dict[@"email"];
        
        _password = dict[@"password"];
        
        _name = dict[@"name"];
        
        _surname = dict[@"surname"];
        
        _rol = dict[@"rol"];
        
        __description = dict[@"description"];
        
        _viafirmaKey = dict[@"viafirmaKey"];
        
        _viafirmaPassword = dict[@"viafirmaPassword"];
        
        _viafirmaCertificate = dict[@"viafirmaCertificate"];
        
        _region = dict[@"region"];
        
        _pos = dict[@"pos"];
        
        _confirmToken = dict[@"confirmToken"];
        
        _changePassToken = dict[@"changePassToken"];
        
        _logDevice = dict[@"logDevice"];
        
        _status = dict[@"status"];
        
        _showLastLogin = dict[@"showLastLogin"];
        
        _groups = dict[@"groups"];
        
        
        
        id groupsInfo_dict = dict[@"groupsInfo"];
        
        if([groupsInfo_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)groupsInfo_dict count]];
            if([(NSArray*)groupsInfo_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)groupsInfo_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[groupsInfo_dict objectAtIndex:i]];
                    MSGroup* d = [[MSGroup alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                _groupsInfo = [[NSArray alloc] initWithArray:objs];
            }
            else
                _groupsInfo = [[NSArray alloc] init];
        }
        else {
            _groupsInfo = [[NSArray alloc] init];
        }
        
        
        
        
        id properties_dict = dict[@"properties"];
        
        if([properties_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)properties_dict count]];
            if([(NSArray*)properties_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)properties_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[properties_dict objectAtIndex:i]];
                    MSParam* d = [[MSParam alloc] initWithValues:dict];
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
        
        
        _roles = dict[@"roles"];
        
        _mobile = dict[@"mobile"];
        
        _channel = dict[@"channel"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_nationalId != nil) dict[@"nationalId"] = _nationalId ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_password != nil) dict[@"password"] = _password ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_surname != nil) dict[@"surname"] = _surname ;
        
    
    
            if(_rol != nil) dict[@"rol"] = _rol ;
        
    
    
            if(__description != nil) dict[@"description"] = __description ;
        
    
    
            if(_viafirmaKey != nil) dict[@"viafirmaKey"] = _viafirmaKey ;
        
    
    
            if(_viafirmaPassword != nil) dict[@"viafirmaPassword"] = _viafirmaPassword ;
        
    
    
            if(_viafirmaCertificate != nil) dict[@"viafirmaCertificate"] = _viafirmaCertificate ;
        
    
    
            if(_region != nil) dict[@"region"] = _region ;
        
    
    
            if(_pos != nil) dict[@"pos"] = _pos ;
        
    
    
            if(_confirmToken != nil) dict[@"confirmToken"] = _confirmToken ;
        
    
    
            if(_changePassToken != nil) dict[@"changePassToken"] = _changePassToken ;
        
    
    
            if(_logDevice != nil) dict[@"logDevice"] = _logDevice ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_showLastLogin != nil) dict[@"showLastLogin"] = _showLastLogin ;
        
    
    
            if(_groups != nil) dict[@"groups"] = _groups ;
        
    
    
    if(_groupsInfo != nil){
        if([_groupsInfo isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_groupsInfo count] ; i++ ) {
				MSGroup *groupsInfo = [[MSGroup alloc]init];
				groupsInfo = [(NSArray*)_groupsInfo objectAtIndex:i];
                [array addObject:[(SWGObject*)groupsInfo asDictionary]];
            }
            dict[@"groupsInfo"] = array;
        }
        else if(_groupsInfo && [_groupsInfo isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_groupsInfo toString];
            if(dateString){
                dict[@"groupsInfo"] = dateString;
            }
        }
        else {
        
            if(_groupsInfo != nil) dict[@"groupsInfo"] = [(SWGObject*)_groupsInfo asDictionary];
        
        }
    }
    
    
    
    if(_properties != nil){
        if([_properties isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_properties count] ; i++ ) {
				MSParam *properties = [[MSParam alloc]init];
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
    
    
    
            if(_roles != nil) dict[@"roles"] = _roles ;
        
    
    
            if(_mobile != nil) dict[@"mobile"] = _mobile ;
        
    
    
            if(_channel != nil) dict[@"channel"] = _channel ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "SWGUser.h"

@implementation SWGUser

-(id)code: (NSString*) code
    nationalId: (NSString*) nationalId
    email: (NSString*) email
    password: (NSString*) password
    name: (NSString*) name
    surname: (NSString*) surname
    rol: (NSString*) rol
    description: (NSString*) description
    viafirmaKey: (NSString*) viafirmaKey
    viafirmaPassword: (NSString*) viafirmaPassword
    viafirmaCertificate: (NSString*) viafirmaCertificate
    region: (NSString*) region
    pos: (NSString*) pos
{
  _code = code;
  _nationalId = nationalId;
  _email = email;
  _password = password;
  _name = name;
  _surname = surname;
  _rol = rol;
  _description = description;
  _viafirmaKey = viafirmaKey;
  _viafirmaPassword = viafirmaPassword;
  _viafirmaCertificate = viafirmaCertificate;
  _region = region;
  _pos = pos;
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
        _description = dict[@"description"]; 
        _viafirmaKey = dict[@"viafirmaKey"]; 
        _viafirmaPassword = dict[@"viafirmaPassword"]; 
        _viafirmaCertificate = dict[@"viafirmaCertificate"]; 
        _region = dict[@"region"]; 
        _pos = dict[@"pos"]; 
        

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
        if(_description != nil) dict[@"description"] = _description ;
        if(_viafirmaKey != nil) dict[@"viafirmaKey"] = _viafirmaKey ;
        if(_viafirmaPassword != nil) dict[@"viafirmaPassword"] = _viafirmaPassword ;
        if(_viafirmaCertificate != nil) dict[@"viafirmaCertificate"] = _viafirmaCertificate ;
        if(_region != nil) dict[@"region"] = _region ;
        if(_pos != nil) dict[@"pos"] = _pos ;
        NSDictionary* output = [dict copy];
    return output;
}

@end


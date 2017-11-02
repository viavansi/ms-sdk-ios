#import "SWGDate.h"
#import "MSMenuOption.h"

@implementation MSMenuOption

-(id)className: (NSString*) className
    automatic: (NSNumber*) automatic
    name: (NSString*) name
    icon: (NSString*) icon
    username: (NSString*) username
    password: (NSString*) password
    email: (MSMail*) email
    
{
    _className = className;
    _automatic = automatic;
    _name = name;
    _icon = icon;
    _username = username;
    _password = password;
    _email = email;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _className = dict[@"className"];
        
        _automatic = dict[@"automatic"];
        
        _name = dict[@"name"];
        
        _icon = dict[@"icon"];
        
        _username = dict[@"username"];
        
        _password = dict[@"password"];
        
        
        
        id email_dict = dict[@"email"];
        
        if(email_dict != nil)
            _email = [[MSMail  alloc]initWithValues:email_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_className != nil) dict[@"className"] = _className ;
        
    
    
            if(_automatic != nil) dict[@"automatic"] = _automatic ;
        
    
    
            if(_name != nil) dict[@"name"] = _name ;
        
    
    
            if(_icon != nil) dict[@"icon"] = _icon ;
        
    
    
            if(_username != nil) dict[@"username"] = _username ;
        
    
    
            if(_password != nil) dict[@"password"] = _password ;
        
    
    
    if(_email != nil){
        if([_email isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_email count] ; i++ ) {
				MSMail *email = [[MSMail alloc]init];
				email = [(NSArray*)_email objectAtIndex:i];            
                [array addObject:[(SWGObject*)email asDictionary]];
            }
            dict[@"email"] = array;
        }
        else if(_email && [_email isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_email toString];
            if(dateString){
                dict[@"email"] = dateString;
            }
        }
        else {
        
            if(_email != nil) dict[@"email"] = [(SWGObject*)_email asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

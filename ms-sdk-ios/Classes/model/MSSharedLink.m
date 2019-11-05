#import "SWGDate.h"
#import "MSSharedLink.h"

@implementation MSSharedLink

@synthesize scheme = _scheme;
@synthesize token = _token;
@synthesize link = _link;
@synthesize appCode = _appCode;
@synthesize email = _email;
@synthesize subject = _subject;
@synthesize apps = _apps;
@synthesize phone = _phone;

-(id)scheme: (NSString*) scheme
    token: (NSString*) token
    link: (NSString*) link
    appCode: (NSString*) appCode
    email: (NSString*) email
    subject: (NSString*) subject
    apps: (NSArray*) apps
    phone: (NSString*) phone
    
{
    _scheme = scheme;
    _token = token;
    _link = link;
    _appCode = appCode;
    _email = email;
    _subject = subject;
    _apps = apps;
    _phone = phone;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _scheme = dict[@"scheme"];
        
        _token = dict[@"token"];
        
        _link = dict[@"link"];
        
        _appCode = dict[@"appCode"];
        
        _email = dict[@"email"];
        
        _subject = dict[@"subject"];
        
        
        
        id apps_dict = dict[@"apps"];
        
        if([apps_dict isKindOfClass:[NSArray class]]) {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)apps_dict count]];
            if([(NSArray*)apps_dict count] > 0) {
                for (int i=0 ; i<[(NSArray*)apps_dict count] ; i++) {
                	NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:[apps_dict objectAtIndex:i]];
                    MSClientApp* d = [[MSClientApp alloc] initWithValues:dict];
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
        
        
        _phone = dict[@"phone"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_scheme != nil) dict[@"scheme"] = _scheme ;
        
    
    
            if(_token != nil) dict[@"token"] = _token ;
        
    
    
            if(_link != nil) dict[@"link"] = _link ;
        
    
    
            if(_appCode != nil) dict[@"appCode"] = _appCode ;
        
    
    
            if(_email != nil) dict[@"email"] = _email ;
        
    
    
            if(_subject != nil) dict[@"subject"] = _subject ;
        
    
    
    if(_apps != nil){
        if([_apps isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_apps count] ; i++ ) {
				MSClientApp *apps = [[MSClientApp alloc]init];
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
    
    
    
            if(_phone != nil) dict[@"phone"] = _phone ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

#import "SWGDate.h"
#import "MSUpload.h"

@implementation MSUpload

@synthesize link = _link;
@synthesize token = _token;
@synthesize expires = _expires;

-(id)link: (NSString*) link
    token: (NSString*) token
    expires: (SWGDate*) expires
    
{
    _link = link;
    _token = token;
    _expires = expires;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _link = dict[@"link"];
        
        _token = dict[@"token"];
        
        
        
        id expires_dict = dict[@"expires"];
        
        if(expires_dict != nil)
            _expires = [[SWGDate  alloc]initWithValues:expires_dict];
        
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_link != nil) dict[@"link"] = _link ;
        
    
    
            if(_token != nil) dict[@"token"] = _token ;
        
    
    
    if(_expires != nil){
        if([_expires isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( int i=0 ; i<[(NSArray*)_expires count] ; i++ ) {
				SWGDate *expires = [[SWGDate alloc]init];
				expires = [(NSArray*)_expires objectAtIndex:i];
                [array addObject:[(SWGObject*)expires asDictionary]];
            }
            dict[@"expires"] = array;
        }
        else if(_expires && [_expires isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_expires toString];
            if(dateString){
                dict[@"expires"] = dateString;
            }
        }
        else {
        
            if(_expires != nil) dict[@"expires"] = [(SWGObject*)_expires asDictionary];
        
        }
    }
    
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

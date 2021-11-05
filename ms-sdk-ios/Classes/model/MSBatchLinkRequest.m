#import "SWGDate.h"
#import "MSBatchLinkRequest.h"

@implementation MSBatchLinkRequest

@synthesize userCode = _userCode;
@synthesize groupCode = _groupCode;
@synthesize redirectURL = _redirectURL;
@synthesize index = _index;
@synthesize max = _max;

-(id)userCode: (NSString*) userCode
    groupCode: (NSString*) groupCode
    redirectURL: (NSString*) redirectURL
    index: (NSNumber*) index
    max: (NSNumber*) max
    
{
    _userCode = userCode;
    _groupCode = groupCode;
    _redirectURL = redirectURL;
    _index = index;
    _max = max;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _userCode = dict[@"userCode"];
        
        _groupCode = dict[@"groupCode"];
        
        _redirectURL = dict[@"redirectURL"];
        
        _index = dict[@"index"];
        
        _max = dict[@"max"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_userCode != nil) dict[@"userCode"] = _userCode ;
        
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_redirectURL != nil) dict[@"redirectURL"] = _redirectURL ;
        
    
    
            if(_index != nil) dict[@"index"] = _index ;
        
    
    
            if(_max != nil) dict[@"max"] = _max ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

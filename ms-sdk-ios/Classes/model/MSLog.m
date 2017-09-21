#import "SWGDate.h"
#import "MSLog.h"

@implementation MSLog

@synthesize user = _user;
@synthesize device = _device;
@synthesize msg = _msg;
@synthesize level = _level;

-(id)user: (NSString*) user
    device: (NSString*) device
    msg: (NSString*) msg
    level: (NSString*) level
    
{
    _user = user;
    _device = device;
    _msg = msg;
    _level = level;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _user = dict[@"user"];
        
        _device = dict[@"device"];
        
        _msg = dict[@"msg"];
        
        _level = dict[@"level"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_user != nil) dict[@"user"] = _user ;
        
    
    
            if(_device != nil) dict[@"device"] = _device ;
        
    
    
            if(_msg != nil) dict[@"msg"] = _msg ;
        
    
    
            if(_level != nil) dict[@"level"] = _level ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

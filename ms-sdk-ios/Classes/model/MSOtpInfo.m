#import "SWGDate.h"
#import "MSOtpInfo.h"

@implementation MSOtpInfo

@synthesize groupCode = _groupCode;
@synthesize type = _type;
@synthesize recipient = _recipient;

-(id)groupCode: (NSString*) groupCode
    type: (NSString*) type
    recipient: (NSString*) recipient
    
{
    _groupCode = groupCode;
    _type = type;
    _recipient = recipient;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _groupCode = dict[@"groupCode"];
        
        _type = dict[@"type"];
        
        _recipient = dict[@"recipient"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_recipient != nil) dict[@"recipient"] = _recipient ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

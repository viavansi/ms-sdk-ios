#import "SWGDate.h"
#import "MSOtpInfo.h"

@implementation MSOtpInfo

@synthesize groupCode = _groupCode;
@synthesize type = _type;
@synthesize recipient = _recipient;
@synthesize groupTitle = _groupTitle;
@synthesize groupDesc = _groupDesc;

-(id)groupCode: (NSString*) groupCode
    type: (NSString*) type
    recipient: (NSString*) recipient
    groupTitle: (NSString*) groupTitle
    groupDesc: (NSString*) groupDesc
    
{
    _groupCode = groupCode;
    _type = type;
    _recipient = recipient;
    _groupTitle = groupTitle;
    _groupDesc = groupDesc;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _groupCode = dict[@"groupCode"];
        
        _type = dict[@"type"];
        
        _recipient = dict[@"recipient"];
        
        _groupTitle = dict[@"groupTitle"];
        
        _groupDesc = dict[@"groupDesc"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_groupCode != nil) dict[@"groupCode"] = _groupCode ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_recipient != nil) dict[@"recipient"] = _recipient ;
        
    
    
            if(_groupTitle != nil) dict[@"groupTitle"] = _groupTitle ;
        
    
    
            if(_groupDesc != nil) dict[@"groupDesc"] = _groupDesc ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end

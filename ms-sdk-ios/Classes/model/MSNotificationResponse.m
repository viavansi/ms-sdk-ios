#import "SWGDate.h"
#import "MSNotificationResponse.h"

@implementation MSNotificationResponse

@synthesize code = _code;
@synthesize messageCode = _messageCode;
@synthesize setCode = _setCode;
@synthesize status = _status;
@synthesize type = _type;
@synthesize creationDate = _creationDate;
@synthesize updateDate = _updateDate;
@synthesize target = _target;

-(id)code: (NSString*) code
    messageCode: (NSString*) messageCode
    setCode: (NSString*) setCode
    status: (NSString*) status
    type: (NSString*) type
    creationDate: (NSNumber*) creationDate
    updateDate: (NSNumber*) updateDate
    target: (NSString*) target
    
{
    _code = code;
    _messageCode = messageCode;
    _setCode = setCode;
    _status = status;
    _type = type;
    _creationDate = creationDate;
    _updateDate = updateDate;
    _target = target;
    

    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _code = dict[@"code"];
        
        _messageCode = dict[@"messageCode"];
        
        _setCode = dict[@"setCode"];
        
        _status = dict[@"status"];
        
        _type = dict[@"type"];
        
        _creationDate = dict[@"creationDate"];
        
        _updateDate = dict[@"updateDate"];
        
        _target = dict[@"target"];
        
        
    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    
            if(_code != nil) dict[@"code"] = _code ;
        
    
    
            if(_messageCode != nil) dict[@"messageCode"] = _messageCode ;
        
    
    
            if(_setCode != nil) dict[@"setCode"] = _setCode ;
        
    
    
            if(_status != nil) dict[@"status"] = _status ;
        
    
    
            if(_type != nil) dict[@"type"] = _type ;
        
    
    
            if(_creationDate != nil) dict[@"creationDate"] = _creationDate ;
        
    
    
            if(_updateDate != nil) dict[@"updateDate"] = _updateDate ;
        
    
    
            if(_target != nil) dict[@"target"] = _target ;
        
    

    NSDictionary* output = [dict copy];
    return output;
}

@end
